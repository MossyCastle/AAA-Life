/*
    variable "address_space" {
//  description = "Specifies the AWS instance type."
    address_space     = "10.0.0.0/16"
    }
*/

provider "aws" {
  //version = "~> 2.0"
  //  region  = region
  region = "us-west-2"
}

resource aws_vpc "hashicat" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "vpc"
  }
}
