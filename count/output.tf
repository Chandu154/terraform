output "private_ip" {
    value= aws_instance.condtions[*].private_ip
  
}