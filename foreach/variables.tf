variable "ami_id" {
    default= "ami-03265a0778a880afb"
}

variable "instances" {
    type= map
    default = {
        MongoDB ="t3.medium"
        MYSQL = "t3.medium"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
        shipping = "t2.micro"
        payment = "t2.micro"
        rabbitmq = "t2.micro"
        redis = "t2.micro"
        web = "t2.micro"
    }   #each.key= each.value
  
}

variable "zone_id" {
    default = "Z0638867286EEEYHY6IBV"
  
}

variable "domine" {
    default= "joindevops.store"
  
}


variable "ingress" {
    type = list
    default = [
        {
            from_port= 80
            to_port = 80
            description = "allowing 80 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        
        },
        {
            from_port= 443
            to_port = 443
            description = "allowing 443 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port= 22
            to_port = 22
            description = "allowing 22 from public"
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
  
}