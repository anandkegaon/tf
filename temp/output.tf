
output "instance-id" {
    value = aws_instance.Ansible.id
  
}


output "public_ip" {
    value = aws_instance.Ansible.public_ip
  
}

output "private_ip" {
    value = aws_instance.Ansible.private_ip
 
}