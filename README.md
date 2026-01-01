# Assignment 2 – Multi-Tier Web Infrastructure Using Terraform

## Project Overview
This project implements a highly available multi-tier web infrastructure on AWS using Terraform.
The architecture follows Infrastructure as Code (IaC) principles and includes networking,
security, load balancing, caching, and automated deployment.

The system is designed to:
- Distribute traffic using Nginx load balancer
- Serve content from multiple Apache backend servers
- Ensure high availability and fault tolerance
- Automate infrastructure provisioning and cleanup

---

## Architecture Diagram

![Architecture Diagram](documents/architecture.png)

---

## Architecture Description
The infrastructure consists of the following layers:

- **Internet**: End users accessing the application
- **Internet Gateway**: Allows inbound/outbound traffic
- **VPC**: Isolated virtual network
- **Public Subnet**: Hosts all EC2 instances
- **Nginx Server**:
  - Acts as reverse proxy
  - Performs load balancing
  - Implements caching
  - Handles SSL/TLS
- **Backend Web Servers**:
  - Apache servers
  - Serve application content
  - One backup server for high availability

---

## Components
- Terraform modules:
  - Networking
  - Security
  - Webserver
- AWS EC2
- AWS VPC
- AWS Security Groups
- Nginx
- Apache
- Bash automation scripts

---

## Prerequisites

### Required Tools
- Terraform
- AWS CLI
- Git
- Git Bash
- SSH client

### AWS Credentials Setup
AWS credentials must be configured using AWS CLI with appropriate IAM permissions.

### SSH Key Setup
An EC2 key pair is required to access the instances securely.

---

## Deployment Instructions

### Step-by-Step Deployment
1. Initialize Terraform
2. Configure variables
3. Validate configuration
4. Apply Terraform configuration
5. Access Nginx public IP in browser

### Variable Configuration
Variables are defined in:
- `variables.tf`
- `terraform.tfvars.example`

No real credentials are committed.

### Terraform Commands
- terraform init
- terraform validate
- terraform plan
- terraform apply

---

## Configuration Guide

### Update Backend IPs
Backend IPs are automatically managed by Terraform and updated in Nginx configuration.

### Nginx Configuration
- Reverse proxy
- Load balancing
- Caching enabled
- Rate limiting applied

### Testing Procedures
- Load balancing verification
- Cache hit/miss testing
- High availability testing
- Security group validation

---

## Architecture Details

### Network Topology
- Single VPC
- Public subnet
- Internet Gateway
- Route tables

### Security Groups
- SSH access restricted
- HTTP and HTTPS allowed
- Backend access limited to Nginx only

### Load Balancing Strategy
- Round-robin load balancing
- Backup server configured

---

## Troubleshooting

### Common Issues
- SSH connection timeout
- Invalid security group rules
- Terraform state lock issues

### Log Locations
- Nginx logs: `/var/log/nginx/`
- Apache logs: `/var/log/httpd/`

### Debug Commands
- systemctl status nginx
- systemctl status httpd
- terraform state list

---

## Infrastructure Cleanup
All resources are destroyed using Terraform to avoid unnecessary AWS costs.

Steps:
- terraform destroy
- Verify no remaining EC2 instances
- Confirm empty Terraform state

---

## Repository Structure
The repository follows a modular and clean structure with separate directories
for modules, scripts, screenshots, and documentation.

---

## Conclusion
This project demonstrates real-world cloud infrastructure deployment using Terraform,
ensuring scalability, security, and automation while following best DevOps practices.
