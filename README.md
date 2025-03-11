# 🚀 OpenManus Docker Setup  

This repository provides a **Docker** and **Docker Compose** setup for running [OpenManus](https://github.com/mannaandpoem/OpenManus) in a containerized environment.  

## 📌 Features  
- Easy deployment using Docker  
- Supports Docker Compose for simplified management  
- Automatically installs dependencies  

---

## 🛠️ Installation & Usage  

### **1️⃣ Clone the Repository**  
```bash
[git clone https://github.com/maaghaa/OpenManus-Docker.git](https://github.com/maaghaa/open_manus_docker.git)
cd OpenManus-Docker
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
✅ Start OpenManus  

---

## ⚙️ Configuration  
To configure OpenManus, edit the `config.toml` file inside the `config` directory:  
```bash
cp config/config.example.toml config/config.toml
nano config/config.toml  # Edit API keys and settings
```

---

## 📖 File Structure  

```
📂 OpenManus-Docker
 ├── 📄 Dockerfile          # Docker image setup
 ├── 📄 docker-compose.yml  # Compose file for easier management
 ├── 📄 README.md           # This documentation
 ├── 📂 config              # Configuration files
 ├── 📂 src                 # OpenManus source files
```

---

## 📢 Contributing  
We welcome contributions! Feel free to:  
- ⭐ Star the repository  
- 🛠️ Submit pull requests  
- 📝 Open issues for suggestions or bugs  

---

## 📄 License  
This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.  

---

Enjoy using **OpenManus** with Docker! 🚀🔥
