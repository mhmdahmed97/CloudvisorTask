variable "create_vpc" {
  description = "Whether to create a VPC"
  type        = bool
  default     = true
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Whether to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Whether to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "create_internet_gateway" {
  description = "Whether to create an Internet Gateway"
  type        = bool
  default     = true
}

variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default = ["us-west-1a", "us-west-1b"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {
    Context = "Cloudvisor-technical-task"
  }
}
