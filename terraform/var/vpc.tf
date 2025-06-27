resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_1a_cidr
  availability_zone = "ap-northeast-1a"
  tags = {
    Name = "${var.vpc_name}-subnet-1a"
  }
}

resource "aws_subnet" "subnet_1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_1c_cidr
  availability_zone = "ap-northeast-1c"
  tags = {
    Name = "${var.vpc_name}-subnet-1c"
  }
}