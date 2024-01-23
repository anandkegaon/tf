provider "aws"  {

  region= "us-east-1"

}
resource "aws_instance" "Ansible" {

  instance_type = "t2.micro"
  ami = "ami-0c7217cdde317cfec"
  user_data = file("nginx.sh")
  

   tags = {
        "Name"="sevrer"
    
}

}
