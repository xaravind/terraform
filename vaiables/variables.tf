#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value

variable "image_id" {
  type        = string
  default     = "ami-041e2ea9402c46c32"
  description = "RHEL-9 IMAGE ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
  default = {
    Project     = "Expense"
    Environment = "DEV"
    Module      = "database"
    Name        = "db"
  }
}

variable "sg_name" {
  default = "allow_ssh"
}

variable "description" {
  default = "allwoing port 22"
}

variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allowed_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}