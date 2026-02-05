# Terraform hands-on with LocalStack (30 min)

This workshop is 100% local on macOS and simulates AWS using LocalStack.

**Goal**
Create an S3 bucket and a DynamoDB table using Terraform, view outputs, and destroy everything.

**Prerequisites**
- Docker Desktop installed and running
- Terraform installed (`terraform version`)

**Repo structure**
- `docker-compose.yml`: LocalStack
- `versions.tf`, `provider.tf`: AWS provider pointed at LocalStack
- `main.tf`: resources
- `variables.tf`, `outputs.tf`

## Step by step

### 1) Start LocalStack

```bash
docker compose up -d
```

Wait 10-20 seconds for LocalStack to be ready on `localhost:4566`.

### 2) Initialize Terraform

```bash
terraform init
```

### 3) Plan

```bash
terraform plan
```

### 4) Apply

```bash
terraform apply
```

When prompted, type `yes`.

### 5) View outputs

```bash
terraform output
```

You should see the bucket and table names.

### 6) Change variables (optional)

```bash
terraform apply -var="suffix=002" -var="owner=your-name"
```

### 7) Destroy

```bash
terraform destroy
```

## Quick troubleshooting
- If `docker compose` fails, make sure Docker Desktop is running.
- If Terraform can't connect to LocalStack, check port `4566`.

If you want, I can add a guide with screenshots or a script to automate the steps.
