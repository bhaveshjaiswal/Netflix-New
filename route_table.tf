// Public routetable. 

resource "aws_route_table" "Public-RT" {
  depends_on = [ aws_vpc.vpc ]
  vpc_id = aws_vpc.vpc.id 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public-RT"
  }

}

// Subnet Association with Public-RT. 

resource "aws_route_table_association" "Public-RT1" {
   route_table_id = aws_route_table.Public-RT.id
   subnet_id = aws_subnet.public-1.id
}

resource "aws_route_table_association" "Public-RT2" {
   route_table_id = aws_route_table.Public-RT.id
   subnet_id = aws_subnet.public-2.id
}

// Private RouteTable. 


resource "aws_route_table" "Private-RT1" {
    vpc_id = aws_vpc.vpc.id
    depends_on = [ aws_vpc.vpc ]
    
    route {
      cidr_block =  "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat-gateway1.id
    }
    
    tags = {
    Name = "Private-RT1"
  }

}

// Subnet Association with Private-RT1. 

resource "aws_route_table_association" "Private-RT1" {
   route_table_id = aws_route_table.Private-RT1.id
   subnet_id = aws_subnet.private-1.id  
}


resource "aws_route_table" "Private-RT2" {
    vpc_id = aws_vpc.vpc.id
    depends_on = [ aws_vpc.vpc ]
    
    route {
      cidr_block =  "0.0.0.0/0"
      nat_gateway_id = aws_nat_gateway.nat-gateway2.id
    }
    
    tags = {
    Name = "Private-RT2"
  }

}


resource "aws_route_table_association" "Private-RT2" {
   route_table_id = aws_route_table.Private-RT2.id
   subnet_id = aws_subnet.private-2.id  
}
