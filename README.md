![CI](https://github.com/DakotaB75/AZ-400-ci-cd-github-actions-azure/actions/workflows/ci.yml/badge.svg)
![CD Prod](https://github.com/DakotaB75/AZ-400-ci-cd-github-actions-azure/actions/workflows/cd-production.yml/badge.svg)
![CodeQL](https://github.com/DakotaB75/AZ-400-ci-cd-github-actions-azure/actions/workflows/security-codeql.yml/badge.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Version](https://img.shields.io/badge/version-v1.0.0-green)
![AZ-400](https://img.shields.io/badge/AZ--400-DevOps%20Engineer%20Expert-blue)

# Enterprise CI/CD Pipeline – GitHub Actions + Azure

Production-grade CI/CD architecture using GitHub Actions, Docker and Azure.

This repository demonstrates how to design, secure and operate modern
continuous integration and deployment pipelines for frontend applications.

---

## Architecture Overview
![CI/CD Architecture](diagrams/ci-cd-architecture.png)

- **CI**: GitHub Actions
- **CD**: GitHub Actions (Staging / Production environments)
- **Containerization**: Docker
- **Registry**: Azure Container Registry (ACR)
- **Deployment targets**:
  - Azure App Service (containers)
  - AKS (reference architecture)
- **Security**:
  - CodeQL static analysis
  - Secret validation workflows
  - Environment protection rules

---
## Certification Alignment

This repository is aligned with:

- **Microsoft AZ-400 – Designing and Implementing DevOps Solutions**
- CI/CD with **Azure Pipelines** and **GitHub Actions**

Certification proof available in `/certifications`

---

## CI/CD Flow

1. Developer opens a Pull Request
2. CI pipeline runs:
   - Install dependencies
   - Lint
   - Tests
   - Build
3. CodeQL performs security analysis
4. Merge triggers CD:
   - `develop` → Staging
   - `main` → Production
5. Docker image is built and pushed to ACR
6. Application is deployed
7. Health checks validate availability

---

## Security & Governance

- Secrets managed via GitHub encrypted secrets
- No credentials stored in code
- CodeQL scans on every PR and push
- Production environment protected by manual approvals

---

## Repository Structure

```text
.github/workflows/   # CI/CD, security, secret validation
docker/              # Production and development images
scripts/             # Operational automation
azure/               # Cloud architecture documentation
app/sample-app/      # Demo application
diagrams/             # CI/CD architecture diagrams
