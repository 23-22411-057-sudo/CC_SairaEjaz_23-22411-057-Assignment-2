output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "ID of the created Subnet"
  value       = aws_subnet.this.id
}

output "igw_id" {
  description = "ID of the created Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "route_table_id" {
  description = "ID of the created Route Table"
  value       = aws_route_table.this.id
}
output "nginx_sg_id" {
  description = "ID of the Nginx security group"
  value       = aws_security_group.nginx_sg.id
}

output "backend_sg_id" {
  description = "ID of the backend security group"
  value       = aws_security_group.backend_sg.id
}
