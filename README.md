# 🚀 Azure IaC & Node.js Application

[![Build and Deploy App Service](https://github.com/yorli/Tarea1/actions/workflows/appservice.yml/badge.svg)](https://github.com/yorli/Tarea1/actions/workflows/appservice.yml)
[![Build and Deploy Static Web App](https://github.com/yorli/Tarea1/actions/workflows/webstatic.yml/badge.svg)](https://github.com/yorli/Tarea1/actions/workflows/webstatic.yml)

A complete project demonstrating Infrastructure as Code (IaC) with **Terraform** to deploy a **Node.js Express** application on **Azure App Service**, including **Azure Container Registry** (ACR) and **Static Web Apps**.

---

## 🛠 Tech Stack

| Category | Technologies |
| :--- | :--- |
| **Backend** | ![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=nodedotjs&logoColor=white) ![Express.js](https://img.shields.io/badge/Express.js-000000?style=flat-square&logo=express&logoColor=white) |
| **Infrastructure** | ![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=flat-square&logo=terraform&logoColor=white) ![Azure](https://img.shields.io/badge/Azure-0078D4?style=flat-square&logo=microsoftazure&logoColor=white) |
| **DevOps** | ![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white) ![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white) |

---

## 📂 Project Structure

```bash
Tarea1/
├── .github/workflows/    # CI/CD pipelines
├── app/                  # Node.js application
│   ├── src/index.js      # Express server
│   ├── Dockerfile        # Container definition
│   └── package.json      # Dependencies
└── iac/                  # Infrastructure as Code (Terraform)
    ├── main.tf           # Provider configuration
    ├── variables.tf      # Configuration variables
    ├── acr.tf            # Azure Container Registry
    ├── appservice.tf     # Azure App Service & Plan
    └── static.tf         # Azure Static Web App
```

---

## 🚀 Getting Started

### 📦 Local Application Development
1. Navigate to the `app/` directory:
   ```bash
   cd app
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Run the application:
   ```bash
   npm start
   ```
   The app will be available at `http://localhost:3000`.

### 🏗️ Infrastructure Deployment
1. Navigate to the `iac/` directory:
   ```bash
   cd iac
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Preview changes:
   ```bash
   terraform plan
   ```
4. Apply infrastructure (requires Azure CLI login):
   ```bash
   terraform apply
   ```

---

## 🌐 CI/CD Workflows

The project includes two GitHub Actions workflows:

- **App Service Workflow (`appservice.yml`):** Automatically builds the Docker image, pushes it to Azure Container Registry (ACR), and deploys it to the App Service.
- **Web Static Workflow (`webstatic.yml`):** Deploys static assets to Azure Static Web Apps.

---

## 📝 Configuration

Key variables used in Terraform (defined in `iac/variables.tf`):
- `location`: Azure region (Default: `East US 2`)
- `resource_group_name`: Resource group name
- `acr_name`: Azure Container Registry name
- `app_service_name`: Name of the App Service

---

## 🤝 Contribution

1. Fork the project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

*Made with ❤️ for the IaC Assignment.*
