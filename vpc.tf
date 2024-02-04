resource "aws_vpc" "vpc" {
    cidr_block =  var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support   = true    

    tags = {
    Name = "Netflix-Bhavesh"
  }  

}

// Internet-Gateway attached to VPC. 

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

    tags = {
    Name = "Netflix-Bhavesh"
  }  
}