variable "ami_id" {
default = "ami-03265a0778a880afb"  
}

# variable "instance_names" {
#     type = list
#     default = ["MongoDB" , "cart" , "MYSQL" ,"user"]
  
# }

# variable "tags" {
    
#     type= map
#     default = {
#       Name= "MongoDB"  
#     }
       
#     }

variable "instances" {
    type= map
    default = {
        MongoDB = "t3.medium"
        MYSQL = "t3.medium"
        catalogue = "t2.micro"
        cart = "t2.micro"
        user = "t2.micro"
    }
  
}

variable "zone_id" {
    default = "Z0638867286EEEYHY6IBV"
  
}

variable "domine" {
    default = "devops.store"
}
  












