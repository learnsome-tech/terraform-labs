# Infrastructure as Code with Terraform — lesson m01l01 — What Is Infrastructure As Code?
# https://learnsome.tech/courses/terraform-course/watch?lesson=m01l01
# © LearnSome.tech
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "orders-production"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "eu-west-2a"
  cidr_block        = "10.0.0.0/24"
}
