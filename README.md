# Notes about this Project

All the code gets published to **Codeberg**. All other platforms are just mirrors.

Issues, pull requests, and everything else will only be looked at on **codeberg.org**.


# FreePBX Docker Installation Guide

This guide provides a clean and structured walkthrough to build, run, and install FreePBX inside a Docker container.

---

## 🚀 Steps to Run the FreePBX Container

### 1. Open a Terminal

Navigate to your FreePBX project directory.

---

## 🏗️ 2. Build the Docker Image

Use Docker Compose to build the container image:

```bash
sudo docker-compose build
```

---

## ▶️ 3. Start the Container

Start FreePBX in detached mode:

```bash
sudo docker-compose up -d
```

---

## 🐚 4. Access the Running Container

Enter the FreePBX container shell:

```bash
sudo docker exec -it freepbx17 bash
```

---

## 📦 5. Install FreePBX

Once inside the container, run the installation script:

```bash
bash sng_freepbx_debian_install.sh --skipversion
```

---

## ✅ Notes

* Make sure to run all commands in the order listed above.
* A full and successful FreePBX setup depends on keeping this sequence.

---

Happy deploying! 🎉

