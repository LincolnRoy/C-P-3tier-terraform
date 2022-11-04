resource "aws_vpc" "cornerstone" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "CustomVPC"
  }
}