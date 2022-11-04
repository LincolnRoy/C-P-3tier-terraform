resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.cornerstone.id

  tags = {
    Name = "cornertone_main"
  }
}