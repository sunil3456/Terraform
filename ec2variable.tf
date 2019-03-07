variable "ec2_ami" {
  type = "string"
  default = "ami-0f9cf087c1f27d9b1" 
}
variable "terraform" {
  type = "string"
  default = "terraform"
}

variable "enteryouraccesskey" {
    type = "string"
    description = "AWS access key"
}
variable "enteryoursecretkey" {
    type = "string"
    description = "AWS secret key"
}
variable "region" {
  type = "string"
  default = "us-east-1"  
} 
variable "myvpc" {
  type = "string"
  default = "vpc-0971ec097c44049f8"
}
variable "securitygroupid" {
  type = "list"
  default = ["sg-0f8858643d8fcc6c6"]
}

variable "Subnet-3" {
  type = "string"
  default = "subnet-002f59225c7a045a9"
} 