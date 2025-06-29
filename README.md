# Infraestructura Analítica - Plataforma E-commerce

Este repositorio define la infraestructura analítica para la plataforma de e-commerce, utilizando servicios de Microsoft Azure.

## 📦 Recursos implementados

- Azure SQL Server exclusivo para analítica
- Azure SQL Database (Data Warehouse)
- Azure Data Factory para procesos ETL
- Variables dinámicas para entorno, nombre de proyecto e infraestructura

## ⚙️ Comandos básicos

```bash
terraform init
terraform plan -var-file="local.tfvars"
terraform apply -var-file="local.tfvars"
```

## 🧠 Notas

- El Resource Group se espera que ya exista (creado en `infra-core`).

---
