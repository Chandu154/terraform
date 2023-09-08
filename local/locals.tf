locals {
  ami_id= "ami-03265a0778a880afb"
  key_public = file("${path.module}/devops.pub") #this is file function and we placed in locals
  instance_type= var.isPROD ? "t3.medium" :"t2.micro"
}

#locals are capable of running functions at a time and store the output into a variable
# locals are validating the expression and store the output in variable
