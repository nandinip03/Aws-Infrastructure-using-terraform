🌐 Project Overview
This project demonstrates a complete AWS infrastructure built using Terraform, an Infrastructure as Code (IaC) tool. It automates the provisioning of cloud resources — from networking to compute, storage, and database — ensuring consistency, scalability, and easy management.

🏗️ Core Components
Component	Description
VPC-	The Virtual Private Cloud (project-vpc) defines your isolated network environment with CIDR 10.0.0.0/16. It’s the foundation for all AWS resources.

Subnets-	Two public subnets (public-a and public-b) are created in availability zones ap-south-1a and ap-south-1b. They host public-facing resources like EC2 and ALB.

Internet Gateway-	Enables communication between your VPC and the internet, allowing public access to web servers.

Route Table-	Defines routing rules so traffic from subnets can reach the internet via the gateway.

Security Groups-	Three groups — Web, RDS, and ALB — control inbound/outbound traffic. For example, Web SG allows SSH (22) and HTTP (80).

EC2 Instance-	A virtual server (project-ec2) running in the public subnet with public IP 65.2.233.228. It hosts your application or web service.

Elastic IP-	A static public IP attached to the EC2 instance for consistent external access.

Application Load Balancer-	Distributes incoming traffic across multiple instances for high availability and scalability.

Auto Scaling Group-	Automatically adjusts the number of EC2 instances based on load.

RDS Database-	A MySQL database (projectdb) deployed in the RDS subnet group, providing persistent data storage.

S3 Bucket-	Used for storing backups, logs, or static assets. Named terraform-aws-project-bucket-02135c92.

Terraform- Configuration	Files like main.tf, variables.tf, and terraform.tfstate define, parameterize, and track the infrastructure state.


⚙️ Workflow
Terraform Initialization — Sets up providers and modules.

Plan Phase — Terraform shows what resources will be created.

Apply Phase — Resources are provisioned in AWS automatically.

Output Phase — Displays key outputs like EC2 public IP.

Destroy Phase — Removes all resources cleanly when no longer needed.

🔒 Security & Networking
Security groups restrict access to only necessary ports (SSH, HTTP, MySQL).

Public subnets host internet-facing components, while RDS resides in private subnets for isolation.

The architecture ensures secure communication between EC2, ALB, and RDS.

📈 Scalability & Reliability
The ALB + Auto Scaling Group combination ensures high availability.

Terraform state management allows version control and reproducibility.

Multi-AZ deployment improves fault tolerance.

🧩 Use Cases
Hosting web applications or APIs.

Deploying microservices with load balancing.

Managing cloud resources automatically with IaC.

Demonstrating DevOps automation and AWS best practices.
