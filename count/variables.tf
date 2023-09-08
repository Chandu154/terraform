variable "ami_id" {
    default= "ami-03265a0778a880afb"
}

variable "instance_names" {
    type= list
    default= ["MongoDB","MYSQL","cart","user","catalogue","rabbitmq","payment","shipping","web","redis"]
}

variable "zone_id" {
    default= "Z0638867286EEEYHY6IBV" 
  
}

variable "domain" {
    default= "joindevops.store"
} 