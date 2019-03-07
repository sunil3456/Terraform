variable "enteryouraccesskey" {
    type = "string"
    description = "AWS access key"
}
variable "enteryoursecretkey" {
    type = "string"
    description = "AWS secret key"
}
variable "region" {
  default = "us-east-1"  
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "subnet_cidr" {
  type = "list"
  default = ["10.0.15.0/24","10.0.11.0/24","10.0.12.0/24","10.0.13.0/24","10.0.14.0/24"]
} 
data "aws_availability_zones" "azs" {}

/* 
variable "azs" {
  type = "list"
  default = ["us-east-1a","us-east-1b","us-east-1c","us-east-1d","us-east-1e"]
}
 */


