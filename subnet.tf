// cerating public subnets. 

resource "aws_subnet" "public-1" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.public_subnet1
   availability_zone = var.avaibility_zone_1a
   map_public_ip_on_launch = true
}

resource "aws_subnet" "public-2" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.public_subnet1
   availability_zone = var.avaibility_zone_1b
   map_public_ip_on_launch = true
}

/*resource "aws_subnet" "public-3" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.public_subnet1
   availability_zone = var.avaibility_zone_1c
   map_public_ip_on_launch = true
}*/

// creating private subnet

resource "aws_subnet" "private-1" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.private_subnet1
   availability_zone = var.avaibility_zone_1a
   
}

resource "aws_subnet" "private-2" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.private_subnet2
   availability_zone = var.avaibility_zone_1b
}

/*
resource "aws_subnet" "private-3" {
   depends_on = [aws_vpc.vpc]
   vpc_id = aws_vpc.vpc.id
   cidr_block = var.private_subnet3
   availability_zone = var.avaibility_zone_1c
}
*/