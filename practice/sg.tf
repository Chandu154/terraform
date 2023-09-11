# resource "aws_security_group" "allow_all" {
#     name= var.sg_name
#     description= "allowing all ports" # we can keep this in variable
 


#  # inbound
#   ingress {
#     description      = "Allowing all inbound traffic"
#     from_port        = 0
#     to_port          = 0
#     protocol         = "tcp"
#     cidr_blocks      = var.sg_cidr
#   }

#   # out bound
#  egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1" # all protocals
#     cidr_blocks      =  var.sg_cidr

#   } 


# }