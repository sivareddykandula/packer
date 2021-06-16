
source "amazon-ebs" "lamp" {

    source_ami  = "ami-090717c950a5c34d3"

    ssh_username = "ubuntu"

    ami_name    = "lampfrompacker_{{timestamp}}"

    region      = "us-west-2"

    instance_type = "t2.micro"




}




build {

    sources = ["amazon-ebs.lamp"]

    provisioner "shell" {

        inline = ["sudo apt update", "sudo apt install apache2 -y"]

    }

}