variable "region" {
  description = "this is the region"
  default = "us-east-1"
}

#vpc variables
variable "vpc_name" {
  default = "my-vpc"
}

variable "cblock" {
  default = "192.168.0.0/16"
}

#security group variables
variable "security-group_name" {
  default = "Web-sg-dev"
}

#env name
variable "env_name" {
  default = "dev"
}

#team name
variable "team_name" {
  default = "DevOps"
}

#created-by name
variable "owner" {
  default = "Dev-team"
}

#create key_pair name
variable "key_name" {
  default = "terra-key"
}

#choose ami for ec2
variable "ami_id" {
  default = "ami-0393ee318b08f4511"
}

#choose instance type
variable "instance_type" {
  default = "t2.micro"
}