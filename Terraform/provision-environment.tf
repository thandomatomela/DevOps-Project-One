## This File Will Be Used To Provion The Environment Required For this Task

provider "aws" {
    region  = "us-east-1"
    access_key = "AKIAT4XEGLISC4TO3ECY"
    secret_key = "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"
    
}

resource "aws_instance" "web_server" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  user_data = "${file("install_nginx.sh")}"
 
  tags = {
    Name = "Ubuntu Web Server"
  }
}
