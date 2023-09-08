# they call it as aws_instance insted of ec2

#resource "aws_instance" "my_wish" {
#    ami = "ami-03265a0778a880afb" # devops practice in us-east-1
#    instance_type= "t2.micro"
#}
#

resource "aws_instance" "my_wish" {
    ami = var.ami_id  # devops practice in us-east-1
    instance_type= var.instance_type
    security_groups= [aws_security_group.allow_all.name]

    # tags= {
    #     Name= "MongoDB"
    #     Environment= "DEV"
    #     Terraform= "true"
    #     Project= "Roboshop"
    #     component= "MongoDB"
    # }

    tags = var.tags
}


