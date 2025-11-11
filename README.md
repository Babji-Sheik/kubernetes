# 🚀 Node.js + Kubernetes (Minikube) DevOps Showcase

This repository highlights my hands-on journey and working knowledge across **Kubernetes**, **Docker**, **Git**, **Node.js**, and **local cloud simulation** using **Minikube on Windows**.  
It includes experiments, debugging, and real configurations that demonstrate full-stack DevOps understanding — from containerization to version validation.

---

## 🌟 Overview

I set up and managed a complete local Kubernetes environment on **Windows 11**, deploying a **Node.js web application** using **Docker** and **Minikube**.

The project demonstrates:
- Container creation, deployment, and lifecycle management
- Kubernetes configuration (Deployments, Services, Pods)
- Networking, tunneling, and exposing local services
- Debugging and verifying ISO versions in CI-like scenarios
- Git workflows for collaboration and version control

---

## 🧠 What I Explored and Implemented

✅ **Minikube Cluster Setup**
- Installed and configured Minikube (v1.37.0)
- Understood the role of base images like `kicbase:v0.0.48`
- Started and stopped the cluster via `minikube start` / `minikube stop`
- Observed Docker driver behavior and VM provisioning logs

✅ **Docker & Containerization**
- Built Node.js images using Dockerfile
- Inspected layers, versions, and build caching
- Ran local containers before pushing to Kubernetes
- Cleaned up containers and images efficiently

✅ **Kubernetes Configuration**
- Created **Deployment** and **Service** YAML files
- Used **NodePort** for external access
- Verified service URLs and ports through `minikube service`
- Observed pod creation, scaling, and restart behavior
- Used `kubectl get pods`, `kubectl describe`, and `kubectl logs` for debugging

✅ **Networking & Debugging**
- Worked through tunnel creation (`minikube service node-k8s-service`)
- Verified access through generated IP (`192.168.49.x`)
- Resolved cases when app was not responding due to pending tunnel
- Confirmed endpoints and exposed routes

✅ **Testing and CI Knowledge**
- Reviewed example test: verifying ISO version JSON (`iso_test.go`)
- Understood validation of `version.json` files (Minikube build metadata)
- Logged `iso_version`, `kicbase_version`, `commit` IDs — similar to CI verification

✅ **Git & Version Control**
- Initialized Git repo, committed local changes, pushed to GitHub
- Structured commits logically (`init`, `setup deployment`, `debug logs`)
- Created clean `.gitignore` to exclude `node_modules`, `.env`, etc.
- Explored collaborative Git workflows

✅ **Cross-Platform & Environment Handling**
- Entire setup done on **Windows 11 Home**
- Used PowerShell commands (`PS C:\Users\sheik\Work\k8\node-k8s-demo>`)
- Handled Docker driver instead of Hyper-V (due to Windows edition)
- Ensured full compatibility with local development

---

## ⚙️ Tech Stack

| Category | Tools / Versions |
|-----------|------------------|
| Runtime | Node.js (LTS) |
| Containers | Docker |
| Orchestration | Kubernetes (Minikube) |
| Infrastructure | Docker Driver |
| OS | Windows 11 Home |
| Version Control | Git + GitHub |
| Testing | Go (iso_test.go concept) |

---

## 🧩 Folder Structure

```
node-k8s-demo/
├── app.js               # Node.js web server
├── Dockerfile           # Defines image for the app
├── deployment.yaml      # Kubernetes deployment manifest
├── service.yaml         # Service definition (NodePort)
├── version.json         # Version metadata (used for ISO verification)
├── package.json
├── .gitignore
└── README.md
```

---

## 🧰 Common Commands Used

### 🐳 Docker
```bash
docker build -t node-k8s-demo .
docker images
docker ps
docker rm -f <container_id>
```

### ☸️ Kubernetes
```bash
minikube start
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl get pods
kubectl get svc
minikube service node-k8s-service
kubectl logs <pod-name>
```

### 🧾 Git
```bash
git init
git add .
git commit -m "Initial commit - Node.js Kubernetes demo"
git branch -M main
git remote add origin https://github.com/<your-username>/<repo>.git
git push -u origin main
```

---

## 🧠 Lessons Learned

- How Docker and Kubernetes connect seamlessly through Minikube  
- Understanding node drivers and resource allocation in Minikube  
- Using logs and YAML debugging to identify service connectivity issues  
- Lifecycle management of containers and pods  
- How version files (`version.json`) link to CI/CD reliability  
- Clean Git workflows to maintain project history  

---

## 📸 Example Output

```text
😄  minikube v1.37.0 on Microsoft Windows 11 Home
✨  Using the docker driver based on existing profile
👍  Starting "minikube" primary control-plane node
🏃  Starting tunnel for service node-k8s-service

┌───────────┬──────────────────┬─────────────┬───────────────────────────┐
│ NAMESPACE │       NAME       │ TARGET PORT │            URL            │
├───────────┼──────────────────┼─────────────┼───────────────────────────┤
│ default   │ node-k8s-service │ 3000        │ http://192.168.49.2:30080 │
└───────────┴──────────────────┴─────────────┴───────────────────────────┘
```

---

## 🧑‍💻 Author

**Sheik**  
💡 DevOps | Kubernetes | Docker | Git | Cloud Automation  
📦 Real hands-on setup and debugging experience on Windows  
📬 [Your GitHub Profile or Email Here]

---
