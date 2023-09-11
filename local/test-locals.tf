# resource "aws_instance" "condtions" {
#   count= 10  
#   ami= local.ami_id
#   instance_type = var.instance_names [count.index] == "MongoDB" || var.instance_names [count.index] == "MYSQL" ? "t3.medium" : "t2.micro"

#   tags= {
#     Name= var.instance_names [count.index]
#   }
# }

# resource "aws_route53_record" "record" {
#   count= 10  
#   zone_id = var.zone_id
#   name    = "${var.instance_names [count.index]}.${var.domain}" #interpolation,we are  
#   #name   = "${var.instance_names [count.index]}.devops.store" #interpolation,we are combning the one variable value and string value
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.condtions[count.index].private_ip]
# }

#we are saying to the terraform to use file function and use mention content
# ,and create the key

resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = local.key_public
}


resource "aws_instance" "file-function" {
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}


