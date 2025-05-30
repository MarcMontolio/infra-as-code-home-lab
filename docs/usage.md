# Usage guide

This guide explains how to provision and configure your home lab infrastructure using **Terraform** and **Ansible**. It's not magic, but it gets the job done.

---

## 📋 Prerequisites

* **Terraform** 1.0+ installed
* **Ansible** 2.9+ installed
* **SSH** access or local connection (for Ansible)
* **Docker** (only if you're testing modules like a true hero)

---

## 🔧 Setup

1. **Clone the repository**:

   ```bash
   git clone https://github.com/MarcMontolio/infra-as-code-home-lab.git
   cd infra-as-code-home-lab
   ```

2. **Check and tweak your variables**:

   ```bash
   cat examples/variables.tfvars
   ```

   Edit **project**, **network\_cidr**, **vm\_count**, and whatever else makes sense in your lab fantasy.

---

## ▶️ Provision Infrastructure (Terraform)

1. Change into the **terraform** directory:

   ```bash
   cd terraform
   ```

2. Initialize and preview changes:

   ```bash
   terraform init
   terraform plan -var-file=../examples/variables.tfvars
   ```

3. Apply and breathe deeply:

   ```bash
   terraform apply -var-file=../examples/variables.tfvars
   ```

4. Outputs:

   * **network\_cidr**: the pretend network block
   * **vm\_ids**: your virtual list of virtual machines

---

## 🛠️ Configure VMs (Ansible)

1. Make sure your **inventory** file isn't pointing to Narnia:

   ```ini
   # ansible/inventory.ini
   [home-lab]
   localhost ansible_connection=local
   ```

2. Run the playbook like you mean it:

   ```bash
   ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --ask-become-pass
   ```

3. Sanity check:

   * Docker installed? **✅**
   * Git installed? **✅**
   * Minor sense of accomplishment? Hopefully **✅**

---

## 📄 File Layout

```
infra-as-code-home-lab/
├─ terraform/
│  ├─ main.tf
│  ├─ variables.tf
│  ├─ outputs.tf
│  └─ modules/
├─ ansible/
│  ├─ inventory.ini
│  ├─ playbook.yml
│  └─ roles/provision-vm/tasks/main.yml
├─ examples/
│  └─ variables.tfvars
├─ docs/
│  ├─ architecture.md
│  └─ usage.md   ← this file
├─ .github/workflows/ci.yml
├─ .yamllint.yml
├─ .gitignore
└─ README.md
```

---

## 🤝 Contributing

Found a bug, typo, or better way to fake infrastructure? Fork it, patch it, PR it.

---

## 📜 License

MIT © 2025 MarcMontolio
