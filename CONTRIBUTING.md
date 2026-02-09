# Contributing Guidelines

Thank you for your interest in contributing to **AZ-400-ci-cd-github-actions-azure**. This repository demonstrates an enterprise-grade CI/CD architecture using GitHub Actions and Azure. Contributions should preserve production-grade standards for reliability, security, and maintainability.

---

## Scope of Contributions

This repository accepts contributions that improve:

* CI/CD pipeline reliability and performance
* Security hardening and secret management
* Azure deployment architecture
* Documentation and diagrams
* Sample application quality
* Automation scripts and operational tooling

Large architectural changes should be discussed in an issue before implementation.

---

## Development Workflow

### 1. Fork and Branch

Fork the repository and create a feature branch:

```
feature/<short-description>
fix/<short-description>
docs/<short-description>
```

Example:

```
feature/improve-acr-deployment
```

Do not commit directly to `main`.

---

### 2. Coding Standards

Contributors are expected to:

* Follow existing repository structure and conventions
* Write clear, maintainable scripts and workflows
* Avoid hardcoding secrets or credentials
* Maintain Docker best practices
* Keep workflows deterministic and reproducible

Security-sensitive changes must be reviewed carefully.

---

### 3. Testing Requirements

Before opening a Pull Request:

* Ensure workflows pass locally where applicable
* Validate Docker builds
* Confirm GitHub Actions pipelines succeed
* Avoid breaking existing CI/CD flows

Pull requests that break pipelines will not be merged.

---

### 4. Commit Message Convention

Use structured commit messages:

```
type(scope): short description
```

Examples:

```
feat(ci): add staging deployment validation
fix(docker): resolve container startup issue
docs(readme): clarify architecture diagram
```

Types include:

* `feat` — new feature
* `fix` — bug fix
* `docs` — documentation
* `refactor` — code restructuring
* `chore` — maintenance

---

### 5. Pull Request Process

When submitting a Pull Request:

* Provide a clear description of changes
* Reference related issues if applicable
* Explain architectural impact
* Include screenshots or logs when relevant

All PRs are subject to CI checks and security scans.

---

## Security Considerations

This repository enforces strict security practices:

* Never commit secrets
* Use GitHub encrypted secrets
* Follow least-privilege principles
* Report vulnerabilities privately (see `SECURITY.md`)

Security regressions are treated as critical.

---

## Documentation Contributions

Documentation should be:

* Technically precise
* Structured and concise
* Consistent with DevOps terminology
* Updated alongside code changes

Diagrams should reflect actual architecture.

---

## Code of Conduct

Participation in this project is governed by the repository’s Code of Conduct. By contributing, you agree to uphold professional and respectful collaboration standards.

---

## Maintainer Review

The maintainer reserves the right to:

* Request revisions
* Reject contributions that reduce quality
* Prioritize architectural consistency

The goal is to maintain a high-quality reference implementation of enterprise CI/CD practices.

---

Thank you for contributing.
