FreePBX Docker Installation Guide
This document provides step-by-step instructions to build and run the FreePBX Docker
container.
Steps to Run FreePBX Container
Open a terminal and navigate to the FreePBX project directory.
1.
Build the Docker container image using Docker Compose:
•
2.
Start the container in detached mode:
•
3.
sudo docker-compose up -d
Access the running container's shell:
•
4.
sudo docker-compose build
sudo docker exec -it freepbx17 bash
Once inside the container, run the FreePBX installation script:
•
bash sng_freepbx_debian_install.sh --skipversion
Ensure all commands are run in the correct sequence for a successful FreePBX setup.
