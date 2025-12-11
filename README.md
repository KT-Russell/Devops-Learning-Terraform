## WordPress Deployment on AWS with Terraform & Cloud-Init

This project was built for learning purposes, with the goal of understanding Terraform structure, modules, variables, and how to automate a full WordPress deployment on AWS.

All configuration of the instance is handled automatically on boot using **cloud-init**, with no manual setup required.


![WordPress](images/Wordpress-php.png)


## Project Overview – What This Stack Uses

Terraform is used to provision a complete environment that includes:

A custom VPC

Public subnet

Internet Gateway

Route table and route associations

Security groups

An EC2 instance running WordPress

A cloud-init script that installs and configures everything needed for WordPress



## How the Infrastructure Works

1. Network Setup

Terraform first builds the foundational AWS networking:

Creates a VPC

Adds a public subnet

Attaches an Internet Gateway

Configures a route table so the EC2 instance has internet access

Everything is linked automatically so the instance can be reached via its public IP.

2. Security Groups

Terraform then creates all required security rules.

Inbound access:

HTTP (port 80)

SSH (port 22)

Outbound:

All traffic allowed to support package installation and external communication

3. EC2 + Cloud-Init Automation

Terraform launches an EC2 instance using a cloud-init script that handles the full WordPress setup automatically.

The script:

Installs Apache

Installs PHP and required extensions

Installs MySQL client packages

Downloads and configures the latest WordPress build

Sets correct file permissions

Creates and configures the WordPress database

Generates the WordPress config file with the required keys

Sets up the virtual host so WordPress loads immediately in the browser

Once Terraform completes, the EC2 instance is fully ready for WordPress setup and login.



## Deploy this yourself:

Clone the repository:

``git clone https://github.com/<your-username>/<your-repo>.git``

``cd <your-repo>``


Initialise Terraform:

``terraform init``


Preview the infrastructure changes:

``terraform plan``


Deploy the full WordPress environment:

``terraform apply``


When the apply is complete, open the EC2 instance’s Public IPv4 address in your browser to access WordPress.


## Destroying the Environment

To remove all resources run:

``terraform destroy``
