# 🚀 Cloud-Native DevOps Platform (End-to-End CI/CD + Monitoring)

## 📌 Overview

This project is a **production-style DevOps system** that automates the complete lifecycle of a microservices-based application—from code commit to deployment, monitoring, and recovery.

It demonstrates real-world DevOps practices including:

* CI/CD automation
* Containerized microservices
* Cloud deployment (AWS EC2)
* Monitoring, logging, and alerting
* Backup and recovery

---

## 🏗️ Architecture

### 🔄 Workflow

```
Developer → GitHub → Jenkins CI/CD → Docker Build → Deploy on EC2 → Nginx Routing → Monitoring & Alerts
```

---

## ⚙️ Tech Stack

| Category         | Tools Used                 |
| ---------------- | -------------------------- |
| Version Control  | Git, GitHub                |
| CI/CD            | Jenkins                    |
| Containerization | Docker, Docker Compose     |
| Cloud            | AWS EC2, S3                |
| Backend          | Python (Flask)             |
| Database         | PostgreSQL                 |
| Web Server       | Nginx                      |
| Scripting        | Bash                       |
| Monitoring       | Custom Bash Scripts + Cron |

---

## 📦 Project Structure

```
mega-devops-project/
│
├── app/
│   ├── auth-service/
│   ├── api-service/
│   ├── frontend/
│
├── docker/
│   ├── docker-compose.yml
│   ├── nginx.conf
│
├── scripts/
│   ├── monitor.sh
│   ├── log_check.sh
│   ├── alert.sh
│
├── Jenkinsfile
│
└── README.md
```

---

## 🚀 Features

### 🔁 CI/CD Pipeline

* Automated build and deployment using Jenkins
* GitHub webhook integration
* Zero manual deployment

### 🐳 Containerized Microservices

* Auth service (user authentication)
* API service (business logic)
* Frontend (Nginx served UI)
* PostgreSQL database

### 🌐 Networking & Load Handling

* Nginx reverse proxy
* Service-to-service communication via Docker network

### 🗄️ Database Integration

* PostgreSQL with persistent storage
* Environment-based configuration

### 📊 Monitoring & Alerting

* CPU and memory monitoring
* Log-based error detection
* Automated alerts via Bash scripts

### 💾 Backup System

* Scheduled backups using cron
* S3 integration (extendable)

---

## 🧪 How to Run Locally

### 1️⃣ Clone Repo

```bash
git clone https://github.com/shivanshks06/Devops-project1.git
cd Devops-project1/docker
```

### 2️⃣ Start Services

```bash
docker compose up --build
```

### 3️⃣ Access Application

* Frontend → http://localhost:8080
* Auth Service → http://localhost:5001
* API Service → http://localhost:5002

---

## 🧪 Testing

### Signup

```bash
curl -X POST http://localhost:5001/signup \
-H "Content-Type: application/json" \
-d '{"username":"test","password":"123"}'
```

### Login

```bash
curl -X POST http://localhost:5001/login \
-H "Content-Type: application/json" \
-d '{"username":"test","password":"123"}'
```

---

## 📊 Monitoring Setup

### Run scripts manually

```bash
cd scripts
chmod +x *.sh

./monitor.sh
./log_check.sh
```

### Setup cron jobs

```bash
crontab -e
```

```
*/2 * * * * /path/to/scripts/monitor.sh
*/5 * * * * /path/to/scripts/log_check.sh
```

---

## 🔥 Key Learnings

* Designed scalable microservices architecture
* Built automated CI/CD pipelines
* Implemented container orchestration using Docker Compose
* Integrated monitoring and alerting systems
* Practiced real-world DevOps workflows

---

## 🚀 Future Improvements

* Kubernetes (EKS / Minikube)
* Terraform (Infrastructure as Code)
* Prometheus + Grafana dashboards
* Centralized logging (ELK Stack)
* JWT authentication & security enhancements

---

## 👨‍💻 Author

**Shivansh Ksheera Sagar**
DevOps Enthusiast | Cloud | Automation

---

## ⭐ If you found this useful

Give this repo a star ⭐ and feel free to fork!
