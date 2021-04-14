provider "aws" {
  //version = "~> 2.0"
  //  region  = region
  region = "us-west-2"
}

resource aws_vpc "hashicat" {
  cidr_block           = address_space
  enable_dns_hostnames = true

  tags = {
    Name = "vpc"
  }
}
