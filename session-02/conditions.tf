resource "aws_instance" "condition" {
    ami= var.ami_id
    instance_type= var.instance_name == "MongoDB"  ? "t3.medium" : "t2.micro"
}
