resource "aws_instance" "terraform_demo" {
    ami = var.ami
    instance_type = var.instance_type
     key_name   =  var.keypair
    tags = var.tags

    network_interface { 
    device_index = 0
    network_interface_id = aws_network_interface.web-server-nic.id
}                      
    user_data = <<-EOF
                 #!/bin/bash
                 sudo apt update -y
                 sudo apt install apache2 -y
                 sudo systemctl start apache2 
                 sudo bash -c 'echo  This is My very first webserver accomplished through terraform hurray Roger KEEP UP!! > /var/www/html/index.html'                    
                EOF               
}