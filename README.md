# Simple CI for MLOps Using GitHub Actions

This project demonstrates a basic Continuous Integration (CI) pipeline for an MLOps workflow using GitHub Actions. The workflow automatically validates the project, installs dependencies, runs Python scripts, and stores generated artifacts.

## Project Overview

The goal of this project is to learn and implement:

* GitHub Actions
* Continuous Integration (CI)
* Python automation
* Docker basics
* Artifact management
* MLOps workflow fundamentals

## Project Structure

```text
simple-CI-for-mlops-using-Github-Actions/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── artifacts/
│
├── main.py
├── train.py
├── run_model.py
├── requirements.txt
├── pyproject.toml
├── uv.lock
├── dockerfile
└── README.md
```

## Workflow

The CI pipeline performs the following steps:

1. Triggered when code is pushed to the repository.
2. Creates a fresh GitHub Actions runner.
3. Installs Python.
4. Installs project dependencies.
5. Executes Python scripts.
6. Generates output files.
7. Uploads generated files as workflow artifacts.

## GitHub Actions

The workflow file is located at:

```text
.github/workflows/ci.yml
```

It automates the execution of the project whenever changes are pushed to the repository.

## Running Locally

### Clone the Repository

```bash
git clone https://github.com/VenkataViswas/simple-CI-for-mlops-using-Github-Actions.git

cd simple-CI-for-mlops-using-Github-Actions
```

### Create Virtual Environment

```bash
python -m venv venv
```

### Activate Environment

Linux/Mac:

```bash
source venv/bin/activate
```

Windows:

```bash
venv\Scripts\activate
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run Training Script

```bash
python train.py
```

### Run Model

```bash
python run_model.py
```

## Docker Support

A Dockerfile is included in the project.

Build the image:

```bash
docker build -t mlops-ci-demo .
```

Run the container:

```bash
docker run mlops-ci-demo
```

## Artifacts

The workflow uploads generated outputs as GitHub Actions artifacts.

To access them:

1. Open the repository.
2. Go to **Actions**.
3. Select a workflow run.
4. Download the generated artifacts.

## Future Improvements

* Add automated testing
* Add model evaluation metrics
* Integrate DVC
* Connect remote storage (Amazon S3)
* Add CD (Continuous Deployment)
* Deploy model using Docker containers

## Learning Objectives

This project was created to understand:

* GitHub Actions fundamentals
* CI pipelines for machine learning projects
* Dependency management
* Artifact storage
* Docker integration
* MLOps best practices

