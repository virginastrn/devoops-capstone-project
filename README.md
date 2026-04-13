# Account Service

[![Build Status](https://github.com/virginastrn/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)](https://github.com/virginastrn/devops-capstone-project/actions/workflows/ci-build.yaml)

## Overview
RESTful microservice untuk manajemen akun pengguna.

## Endpoints
| Method | URL | Description |
|--------|-----|-------------|
| POST | /accounts | Create an account |
| GET | /accounts | List all accounts |
| GET | /accounts/{id} | Read an account |
| PUT | /accounts/{id} | Update an account |
| DELETE | /accounts/{id} | Delete an account |

## Running Locally
pip install -r requirements.txt
flask run --host=0.0.0.0 --port=5000
