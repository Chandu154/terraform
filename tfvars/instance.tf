resource "aws_instance" "roboshop" {
    ami = var.ami_id
    for_each = var.instances
    instance_type = each.value
    tags = {
            Name = each.key
    }
}



resource "aws_route53_record" "www" {
  for_each= aws_instance.roboshop  
  zone_id = var.zone_id
  name    = "${each.key}.${var.domine}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}



resource "aws_security_group" "allow_all" {
    name= var.sg_name
    description= "allowing all ports" # we can keep this in variable
 
 # inbound
  ingress {
    description      = "Allowing all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.sg_cidr
  }

  # out bound
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # all protocals
    cidr_blocks      =  var.sg_cidr

  } 
}