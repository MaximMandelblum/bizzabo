# AWS Regions / Zones

variable "aws_region" {
  type = string
  description = "AWS region which should be used"
}



# Private subnets

variable "subnet2_private" {
  description = "Create private  subnets for bizzabo"
  type = list
}

# Public  subnets

variable "subnet1_public" {
  description = "Create public  subnets for bizzabo"
  type = list
}

# Resource naming

variable "vpc_name" {
  description = "Name of bizzabo VPC"
  type = string
}

variable "cidr_network" {
  type = string
  description = "CIDR of the bizzabo VPC"

  }
# Tags 
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  type        = map(string)
  default     = {}
}