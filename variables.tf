variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "load-balancer-row9"
}

variable "ami" {
  description = "The AMI to run in the cluster"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "cidrblock" {
  default = "10.0.0.0/20"
  type    = string
}

variable "server_instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
  default     = "t2.micro"
}


