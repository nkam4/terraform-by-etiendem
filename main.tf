resource "aws_instance" "terraform_demo" {
    ami = var.ami
    instance_type = var.instance_type
     key_name   =  var.keypair
    tags = var.tags

    network_interface { 
    device_index = 0
    network_interface_id = aws_network_interface.web-server-nic.id
}        
    user_data  = file("install_apache.sh")                             
}