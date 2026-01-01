# Assignment 2 – Advanced Terraform & Nginx Multi-Tier Architecture

## Overview
This project implements a production-ready multi-tier web infrastructure on AWS using Terraform modules. The setup includes an Nginx reverse proxy, multiple backend web servers, and secure networking components.

## Project Structure

Assignment2/
├── main.tf
├── variables.tf
├── outputs.tf
├── locals.tf
├── terraform.tfvars
├── .gitignore
├── modules/
│   ├── networking/
│   ├── security/
│   └── webserver/
├── scripts/
│   ├── nginx-setup.sh
│   └── apache-setup.sh
└── README.md

## Technologies Used
- Terraform
- AWS
- Nginx
- Apache
