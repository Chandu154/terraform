
resource "aws_instance" "my_wish" {
    ami = var.ami_id  # devops practice in us-east-1
    for_each = var.instances
    instance_type = each.value  
tags = {
    Name = each.key
        }

}


resource "aws_route53_record" "www" {
  for_each= aws_instance.my_wish
  zone_id = var.zone_id
  name    = "${each.key}.${var.domine}"
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}


# resource "aws_instance" "my_wish" {
#     count= 4
#     ami = var.ami_id  # devops practice in us-east-1
#     instance_type = var.instance_names [count.index] == "MongoDB" || var.instance_names [count.index] == "MYSQL" ?  "t3.medium" : "t2.micro" 

# tags = {
#     Name= var.instance_names [count.index]
#         }

# }
















# resource "aws_ec2_instance_state" "your_instance" {
#   instance_id = aws_instance.my_wish.id
#   state       = "running"
# }





