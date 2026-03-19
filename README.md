# dotw-terraform

This repository provides Terraform-based AWS infrastructure for the DOTW ecosystem.

It defines a multi-account lab environment designed for learning, experimentation, and building practical cloud and SRE skills under strict cost constraints.

dotw-terraform focuses on infrastructure provisioning and does not manage platform or application layers.

---

## Scope

dotw-terraform is responsible for:

- AWS multi-account structure
- Networking (VPC, subnets, routing)
- Compute (EC2, Lambda)
- Storage (S3, DynamoDB)
- Databases (RDS – controlled usage)
- IAM roles and policies
- Basic monitoring (CloudWatch)
- Budgeting and cost alerts

Out of scope:

- Kubernetes or platform lifecycle
- CI/CD systems
- Application deployments
- Advanced observability stacks

---

## Architecture

\<details>
\<summary>\<strong>AWS Architecture (click to expand)</strong></summary>

```text
                    dotw-terraform (AWS lab)
                             |
     -----------------------------------------------------------------
     |                    |                    |                      |
management            network             workload               security
(cost control)        (VPC)               (compute)              (audit)
     |                    |                    |                      |
[ v0.1.0 ]          [ v0.1.0 ]          [ v0.1.0 ]             [ v0.1.0 ]
Organizations       VPC                 EC2, lambda            CloudTrail
Identity Center     Subnets             IAM Roles              
Budgets             IGW                 Security Groups
Alerts              Routing             CloudWatch
                    NACLs
     |                    |                    |                      |
[ later ]           [ later ]           [ later ]              [ later ]
Permission sets     Private subnets     Lambda                 Guardrails
Governance          VPC peering         S3                     AWS Config
                    Route 53            DynamoDB               
                                        RDS
                                        Automation

```

</details>

The lab environment is organized into multiple AWS accounts.

management → budgets, cost control  
network → VPC and networking  
workload → compute and lab resources  
security → security and audit (minimal initially)

Each account is managed as a separate Terraform root.

Reusable infrastructure components are defined as modules and composed per account.

---

## Repository Structure

dotw-terraform/
modules/
vpc/
ec2/
iam-role/
budget/
cloudwatch-basic/
accounts/
management/
network/
workload/
security/

---

## Usage Model

Terraform is executed directly per account.

Typical workflow:

```bash
cd accounts/network
terraform init
terraform apply
terraform destroy
