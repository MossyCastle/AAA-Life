
  

provider "aws" {
  //version = "~> 2.0"
  //  region  = region
  region = "us-west-2"
}


resource aws_vpc "hashicat" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
 
  // name = "mossy-terraform"
    tags = {
    Name = "terraform test"
    
  }
}

resource aws_subnet "Main-subnet"{
   vpc_id = aws_vpc.hashicat.id    
   cidr_block = "10.1.1.0/24"
}
