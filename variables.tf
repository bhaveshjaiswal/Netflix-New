
variable "region" { 
  description = "region for infra"
}

variable "vpc_cidr"{
  description = "vpc cidr"
  type = string
}

variable "public_subnet1"{
  description = "public subnet1 id"
  type = string
}

variable "public_subnet2"{
  description = "public subnet2 id"
  type = string
}

variable "avaibility_zone_1a"{
  description = "AZ-1a"
}

variable "avaibility_zone_1b"{
  description = "AZ-1b"
}
/*
variable "avaibility_zone_1c"{
  description = "AZ-1c"
}
*/

variable "private_subnet1"{
  description = "public subnet1 id"
  type = string
}

variable "private_subnet2"{
  description = "public subnet2 id"
  type = string
}

