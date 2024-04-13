# Documenta

infra/
├── cloudformation/
│   ├── templates/
│   │   ├── app.yml
│   │   └── database.yml
│   └── scripts/
│       └── deploy.sh
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ansible/
│   ├── playbook.yml
│   └── roles/
│       └── common/
│           ├── tasks/
│           │   └── main.yml
│           └── handlers/
│               └── main.yml
└── docker/
    ├── Dockerfile
    └── docker-compose.yml