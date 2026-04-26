# 🚀 Advanced DevOps Project: Git Workflow + Auto Deployment on AWS EC2

## 📌 Project Overview
This project demonstrates an advanced DevOps workflow using Git branching strategies and automated deployment on an AWS EC2 instance.

Instead of manual deployment, the system automatically deploys updates based on the Git branch (main / develop).

---

## 🧰 Technologies Used
- Git & GitHub
- AWS EC2 (Ubuntu Server)
- Nginx Web Server
- Bash Scripting
- Cron Jobs (Automation)
- Linux (Ubuntu)

---

## 🏗️ Architecture
Developer → GitHub (main / develop branches) → EC2 Server → Auto Deploy Script → Nginx → Live Website


---

## 🌿 Git Workflow
This project uses a basic Git branching strategy:

- `main` → Production environment (LIVE site)
- `develop` → Development / testing environment

---

## ⚙️ How It Works

1. Code is pushed to GitHub (main or develop branch)
2. EC2 server pulls the repository
3. A deployment script runs automatically
4. Based on branch:
   - main → deployed to production (`/usr/share/nginx/html`)
5. Nginx serves the website

---

## 🚀 Deployment Steps

### 1️⃣ Connect to EC2
```bash
ssh -i key.pem ubuntu@your-ec2-ip

2️⃣ Install dependencies
sudo apt update
sudo apt install nginx git -y
3️⃣ Clone repository
sudo mkdir -p /home/ec2-user/myapp
cd /home/ec2-user/myapp/03_devops_proj
git clone https://github.com/MuhammedReda/03_devops_proj .
4️⃣ Create deploy script
chmod +x deploy.sh
5️⃣ Setup automation (Cron Job)
crontab -e

Add:

* * * * * /var/www/myapp/deploy.sh
🧠 Key Learnings
Git branching strategies in real projects
Difference between production and development environments
Automating deployment processes
Server management using Linux
Basics of DevOps workflows
🔥 Future Improvements
Replace cron with GitHub Webhooks
Implement CI/CD pipeline using GitHub Actions
Add Docker containerization
Add rollback system for failed deployments
Add monitoring and logging system
👨‍💻 Author

Your Muhammed_Reda
DevOps Learning Journey 💻🚀