resource "aws_instance" "name" {
  ami = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"
  
}

resource "aws_s3_bucket" "name" {
    bucket = "depend-on-block-bucket-aws-cloud"
    depends_on = [ aws_instance.name ]
  
}