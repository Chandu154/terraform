data "aws_ami" "ami_id" {
      most_recent = true
      owners = ["amazon"] #you can give AWS account ID

   filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*.0-x86_64-gp2"]
  }
}

output "ami_id" {

  value = data.aws_ami.ami_id.id
}

data "aws_vpc" "default" {
    default= true

}

output "vpc_info" {
    value= data.aws_vpc.default
  
}

resource "aws_security_group" "allow_http" {
    name= "some-name-another-name"
    vpc_id = data.aws_vpc.default.id
    description= "allowing  ports 80" # we can keep this in variable
 
 # inbound
  ingress {
    description      = "Allowing all inbound traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  # out bound
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # all protocals
    cidr_blocks      = ["0.0.0.0/0"]

  } 


}