
resource "aws_eip" "ip1" {
  domain = aws_vpc.vpc.id
  tags = {
    Name = "IP1"
  }
}

resource "aws_nat_gateway" "nat-gateway1" {
  allocation_id = aws_eip.ip1.id
  subnet_id     = aws_subnet.public-1.id


  tags = {
    Name = "Public1"
  }
}

resource "aws_eip" "ip2" {
  domain = aws_vpc.vpc.id
  tags = {
    Name = "IP2"
  }
}

resource "aws_nat_gateway" "nat-gateway2" {
  allocation_id = aws_eip.ip2.id
  subnet_id     = aws_subnet.public-2.id


  tags = {
    Name = "Public1"
  }
}