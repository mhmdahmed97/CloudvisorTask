region = "us-west-2"

availability_zones = ["us-west-2a", "us-west-2b"]

create_vpc = true

vpc_cidr = "10.0.0.0/16"

enable_dns_hostnames = true

enable_dns_support = true

create_internet_gateway = true

public_subnet_cidr_blocks = "10.0.1.0/24"

private_subnet_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24"]