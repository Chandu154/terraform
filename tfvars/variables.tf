#values mentioned in variables.tf is default,we can always do the override these variables.


variable "ami_id" {
    default= "ami-03265a0778a880afb"
}

variable "instances" {
    type= map
    default = {
        MongoDB ="t3.medium"
        MYSQL = "t3.medium"
        #catalogue = "t2.micro"
        #cart = "t2.micro"
        #user = "t2.micro"
        #shipping = "t2.micro"
        #payment = "t2.micro"
        #rabbitmq = "t2.micro"
        #redis = "t2.micro"
        web = "t2.micro"
    }   #each.key= each.value
  
}

variable "sg_name" {
  type= string
  
}



variable "zone_id" {
    default = "Z0638867286EEEYHY6IBV"
  
}

variable "domine" {
    default = "joindevops.store"
  
}

variable "sg_cidr" {
    default = ["0.0.0.0/0"]
  
}