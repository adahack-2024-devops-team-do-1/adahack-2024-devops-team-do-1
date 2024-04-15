# Documentação

### Estrutura da Branch 'INFRA' 

infra/
├── cloudformation/
│   ├── templates/
│   │   ├── app.yml
│   │   └── database.yml
│   └── scripts/
│   │   ├── additional_tasks.sh
│   │   ├── custom.sh
│   │   ├── deploy_manual.sh
│   │   ├── disaster_recovery.sh
│   │   ├── manual_docs.sh
│   │   ├── staging.sh
│   │   └── test.sh
└── docker/
    ├── Dockerfile
    └── docker-compose.yml

### Detalhes:

- **infra/**: Contém todos os arquivos e diretórios relacionados à infraestrutura do projeto.
 - **cloudformation/**: Contém os templates e scripts para a implantação da infraestrutura usando AWS CloudFormation.
    - **templates/**: Contém os arquivos de template CloudFormation para a aplicação e o banco de dados.
      - **app.yml**: Template CloudFormation para a aplicação.
      - **database.yml**: Template CloudFormation para o banco de dados.
    - **scripts/**: Contém scripts para várias tarefas relacionadas à infraestrutura, como implantação manual, tarefas adicionais, recuperação de desastres, configurações personalizadas, ambiente de staging, testes e implantação manual. 
      - **additional_tasks.sh**: Script para automatizar tarefas adicionais que não são cobertas pelo workflow do CI/CD.
      - **custom.sh**: Script personalizado para atender a necessidades específicas do projeto que não são totalmente atendidas pelo workflow do CI/CD.
      - **deploy_manual.sh**: Script para implantação manual da infraestrutura.   
      - **disaster_recovery.sh**: Ferramenta de backup para restaurar o ambiente ou implantar uma versão específica do projeto em caso de falha no workflow do CI/CD.
      - **manual_docs.sh**: Documentação prática sobre como implantar o projeto manualmente.      
      - **staging.sh**: Script usado para testar a implantação do projeto em um ambiente de staging.
      - **test.sh**: Script usado para implantações manuais em ambientes de teste.
 - **docker/**: Contém o Dockerfile e o arquivo docker-compose.yml para a configuração do ambiente de desenvolvimento e execução do projeto.
    - **Dockerfile**: Define a imagem Docker para a aplicação.
    - **docker-compose.yml**: Define os serviços, redes e volumes para o ambiente de desenvolvimento.