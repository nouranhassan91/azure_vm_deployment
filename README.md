# 🚀 Azure VM Deployment with Terraform, Ansible & Azure DevOps

This project automates the provisioning and configuration of a Windows and Linux virtual machine in Microsoft Azure using:

- **Terraform** for Infrastructure as Code (IaC)
- **Ansible** for post-deployment configuration
- **Azure DevOps Pipelines** for CI/CD automation

---

## 📁 Project Structure


azure-vm-deployment-test/
├── terraform/
│ ├── main.tf
│ ├── provider.tf
│ ├── variables.tf
│ └── outputs.tf
├── ansible/
│ └── playbook.yml
├── azure-pipelines.yml
└── README.md

## ✅ Prerequisites

• Azure subscription & service principal for Terraform and Ansible authentication.
(optional)
• Terraform installed (local or Cloud Shell).
• Ansible CLI installed with azure.azcollection available.
• Azure DevOps project with appropriate permissions.

### 🧰 Tools Required

- [Terraform](https://developer.hashicorp.com/terraform/downloads) 1.3+
- [Ansible CLI](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)


🧪 What the Pipeline Does


🟦 Terraform Stage

Installs Terraform

Initializes the configuration

Plans and applies the following:

Resource Group

Virtual Network and Subnet

Public IP

Network Interface

Windows VM

Linux VM

🟩 Ansible Stage

Installs Ansible and Azure collection

Runs playbook.yml, which:

Starts the specified Azure VM (Windows or Linux)

📤 Outputs

After successful execution, Terraform will output:

windows_vm_name = WIN-VM-dev
linux_vm_name   = LINUX-VM-dev
public_ip       = 20.45.xx.xx
