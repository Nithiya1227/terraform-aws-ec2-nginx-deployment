# 🚀 Terraform AWS EC2 Nginx Deployment (Mini DevOps Project)

---

## 📌 Project Summary

This project demonstrates how to provision cloud infrastructure using **Terraform (Infrastructure as Code)** and deploy a live web server on AWS.

The main goal was to understand how real DevOps engineers:

* Automate infrastructure creation
* Launch cloud servers using code
* Debug deployment issues
* Deliver a working live application

By the end of this project, a public website was successfully hosted using an automatically created EC2 instance.

---

## 🧰 Tech Stack

* Terraform (Infrastructure as Code)
* Amazon Web Services (AWS)
* EC2 (Elastic Compute Cloud)
* Nginx Web Server
* Ubuntu Linux

---

## 🎯 Project Objectives

* Create cloud infrastructure using code
* Launch an EC2 instance automatically
* Configure networking and security
* Deploy a live web server
* Access the server using a public IP

---

## ⚙️ Step-by-Step Implementation

### 1️⃣ Terraform Setup

* Installed Terraform locally
* Configured AWS credentials
* Created Terraform project structure

Key files created:

* `provider.tf` → AWS provider configuration
* `variables.tf` → Reusable variables
* `main.tf` → EC2 infrastructure definition
* `outputs.tf` → Public IP output

---

### 2️⃣ Infrastructure as Code

Defined an EC2 instance using Terraform:

* Region: ap-south-1 (Mumbai)
* Instance type: Free-tier eligible instance
* Ubuntu AMI
* Auto-assigned public IP

Tags were added for identification inside AWS console.

---

### 3️⃣ Terraform Execution

Infrastructure deployed using standard Terraform workflow:

```bash
terraform init
terraform plan
terraform apply
```

Result:

* EC2 instance created automatically
* Public IP generated
* Infrastructure fully provisioned from code

---

### 4️⃣ Initial Issue Faced (Real-World Learning)

Although the EC2 instance was created successfully, the website was not accessible initially.

Reason:

* Web server was not installed during instance launch

This highlighted an important DevOps concept:

> Provisioning infrastructure ≠ configuring applications

---

### 5️⃣ Debugging & Fix

Connected to the EC2 instance using SSH and performed:

* Installed Nginx manually
* Started the service
* Enabled it on boot
* Deployed a simple HTML page

Commands used inside EC2:

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

A test HTML page was deployed to:

```
/var/www/html/index.html
```

---

### 6️⃣ Final Result ✅

* Nginx running successfully
* Website accessible via public IP
* Fully working live cloud deployment

This confirmed successful end-to-end delivery:
**Code → Infrastructure → Server → Live Website**

---

## 📸 Project Screenshots

### Terraform Apply Output
![Terraform Apply](screenshots/terraform-apply.png)

### AWS EC2 Dashboard
![EC2 Dashboard](screenshots/ec2-dashboard.png)

### Security Group HTTP Rule
![Security Group](screenshots/security-group.png)

### SSH Debugging
![SSH Terminal](screenshots/ssh-terminal.png)

### Live Website
![Live Output](screenshots/live-site.png)

These screenshots prove hands-on implementation.

---

## 🧠 Key Learnings

* Fundamentals of Infrastructure as Code (IaC)
* Terraform workflow (init → plan → apply)
* AWS EC2 provisioning
* Importance of security groups
* Difference between provisioning and configuration
* Real-world debugging using SSH
* How automation can fail and be fixed

---

## 🔄 Improvements (Next Steps)

Future enhancements for this project:

* Automate Nginx installation using `user_data`
* Convert into reusable Terraform module
* Add remote backend (S3 + DynamoDB)
* Implement CI/CD pipeline
* Add Docker container deployment

---

## 💡 Why This Project Matters

This project reflects a real beginner DevOps workflow:

* Writing infrastructure using code
* Deploying real cloud resources
* Facing real deployment issues
* Debugging and fixing them manually

It demonstrates practical cloud understanding beyond theory.

---

## 🏁 Conclusion

This mini project helped build a strong foundation in:

* Terraform fundamentals
* AWS infrastructure automation
* Cloud debugging skills

It marks an important step toward real-world DevOps engineering and scalable infrastructure automation.

---


