resource "aws_security_group" "roboshop" {
  name        = "roboshop"
  description = "Allow HTTP HTTPS SSH inbound traffic"

#in PROD we need to create the multiple ingress configuration blocks repetedely,
# insted of doing like that using dynamic block to use number of times single block and keeping the repeated things in foreach

  dynamic ingress {
    for_each = var.ingress #here we will get a variable ingress
    content { 
        description      = ingress.value["description"]
        from_port        = ingress.value.from_port
        to_port          = ingress.value.to_port
        protocol         = ingress.value.protocol
        cidr_blocks      = ingress.value.cidr_blocks
   }

  } 

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop"
  }
}
