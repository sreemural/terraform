data "aws_ami" "ubuntu" {
    most_recent = true 
}


resource "aws_instance" "myec2" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.medium"
     
}