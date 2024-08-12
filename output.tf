output "ssh_connection" {
  value = "ssh -i ${local_file.ssh_key.filename} ec2-user@${aws_instance.Server1.public_ip}"
}
output "publi_ip" {
  value = aws_instance.Server1.public_ip
}
output "az" {
  value = aws_instance.Server1.availability_zone
}
