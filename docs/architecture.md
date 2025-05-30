# 🧱 Architecture Overview

This home-lab setup uses Terraform to fake the infrastructure, and Ansible to pretend it knows what it’s doing after provisioning. It’s modular, scalable, and completely overkill for a VM or two—which is perfect.

---

## 📦 Components

1. **Network** (Terraform)

   - CIDR block: `192.168.50.0/24`
   - Simulated via a `null_resource` pretending to be a network

2. **Virtual Machines** (Terraform)

   - Number defined by `vm_count` (default: 2)
   - Also just `null_resource`, but hey, it looks official

3. **Configuration** (Ansible)

   - Inventory file: `ansible/inventory.ini`
   - Playbook: `ansible/playbook.yml`
   - Role: `provision-vm`, which does exactly three things:
     - Runs `apt update`
     - Installs `docker.io`
     - Installs `git` so you can clone more stuff you'll never finish

---

## 🧠 Logical Diagram

