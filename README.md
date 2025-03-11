# 🚀 OpenManus Docker Setup  

This repository provides a **Docker** and **Docker Compose** setup for running [OpenManus](https://github.com/mannaandpoem/OpenManus) in a containerized environment.  

## 📌 Features  
- ✅ Easy deployment using Docker  
- ✅ Supports Docker Compose for simplified management  
- ✅ Automatically installs dependencies  

---

## 🛠️ Installation & Usage  

### **1️⃣ Clone the Repository**  
```bash
git clone https://github.com/maaghaa/open_manus_docker.git
cd open_manus_docker
```

### **2️⃣ Build and Run with Docker**  
```bash
docker build -t openmanus .
docker run --rm -it -p 8000:8000 openmanus
```

### **3️⃣ Run with Docker Compose (Recommended)**  
```bash
docker-compose up --build
```

This will:  
✅ Build the Docker image  
✅ Install dependencies  
✅ Copy `config.example.toml` into `/app/config/config.toml` inside the container  
✅ Start OpenManus  

---

## ⚙️ Configuration  

### **Where is the config file?**
The `config.toml` file is stored inside the container at:  
```
/app/config/config.toml
```

### **How to Edit the Config File?**
Since **Docker Compose mounts the config file**, you can edit it **outside** the container, and changes will reflect inside.

1️⃣ Open `config.example.toml` in your project root and modify it:  
```bash
nano config.example.toml
```

2️⃣ Make sure it contains your correct API keys and settings:  
```toml
[llm]
model = "claude-3-5-sonnet"
base_url = "https://api.openai.com/v1"
api_key = "sk-your-api-key"
max_tokens = 4096
temperature = 0.0
```

3️⃣ Save the file and restart the container:  
```bash
docker-compose down && docker-compose up --build
```

---

## 📖 File Structure  

```
📂 open_manus_docker
 ├── 📄 Dockerfile          # Docker image setup
 ├── 📄 docker-compose.yml  # Compose file for easier management
 ├── 📄 README.md           # This documentation
 ├── 📄 config.example.toml # Configuration file (copied inside the container)
 ├── 📂 src                 # OpenManus source files
```

---

## 📢 Contributing  
We welcome contributions! Feel free to:  
- ⭐ Star the repository  
- 🛠️ Submit pull requests  
- 📝 Open issues for suggestions or bugs  

---

## 🚀 Run OpenManus in One Command  
```bash
docker-compose up --build
```
Enjoy **OpenManus** with Docker! 🎉🔥  

---

This README now includes your GitHub repo link. 🚀 Let me know if you need further modifications!
