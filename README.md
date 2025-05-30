<p align="center">
  <img src="https://img.shields.io/github/workflow/status/MarcMontolio/infra-as-code-home-lab/CI?label=CI&logo=github" alt="CI">
  <img src="https://img.shields.io/badge/terraform-1.0%2B-lightblue" alt="Terraform Version">
  <img src="https://img.shields.io/badge/ansible-2.9%2B-red" alt="Ansible Version">
  <img src="https://img.shields.io/github/license/MarcMontolio/infra-as-code-home-lab" alt="License">
</p>

# Infrastructure as Code Home Lab

> Modular Home Lab environment provisioning with Terraform & Ansible. Like Lego, but more YAML and fewer injuries to your feet.

## 📋 Table of Contents

* [Prerequisites](#📋-prerequisites)
* [Quickstart](#🚀-quickstart)
* [Architecture](#🔍-architecture)
* [Usage](#▶️-usage)
* [Contributing](#🤝-contributing)
* [License](#📜-license)

---

## 📋 Prerequisites

* Terraform 1.0+ (because 0.x is so last decade)
* Ansible 2.9+ (plays well with others)
* SSH access or local connection
* Docker (for local testing, or just because it's cool)

---

## 🚀 Quickstart

```bash
git clone https://github.com/MarcMontolio/infra-as-code-home-lab.git
cd infra-as-code-home-lab
```

### Provision infra

```bash
cd terraform
terraform init
terraform apply -var-file=../examples/variables.tfvars
```

### Configure VMs

```bash
cd ansible
ansible-playbook -i inventory.ini playbook.yml --ask-become-pass
```

---

## 🔍 Architecture

See [docs/architecture.md](docs/architecture.md) for a breakdown of the setup and a diagram that would make your 7th grade IT teacher proud.

---

## ▶️ Usage

Detailed instructions in [docs/usage.md](docs/usage.md), because even pros need a manual sometimes.

---

## 🤝 Contributing

Pull requests welcome, as long as your YAML is prettier than your excuses.

---

## 📜 License

MIT © 2025 MarcMontolio — free as in freedom, not as in support hotline.
