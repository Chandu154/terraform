# resource "aws_instance" "roboshop" {
#     ami = var.ami_id
#     for_each = var.instances
#     instance_type = each.value
#     tags = {
#             Name = each.key
#     }
# }


# if web give public_ip else give private ip
# resource "aws_route53_record" "www" {
#   for_each= aws_instance.roboshop  
#   zone_id = var.zone_id
#   name    = "${each.key}.${var.domine}"
#   type    = "A"
#   ttl     = 1
#   records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
# }



# output "aws_instance_info" {
#     value = aws_instance.roboshop
  
# }