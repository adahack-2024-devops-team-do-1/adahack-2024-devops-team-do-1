#!/bin/bash

# Este script serve como uma documentação prática de como implantar o projeto manualmente.
# Ele é destinado a ser usado por desenvolvedores, administradores de sistemas ou para fins de aprendizado.

# 1. Verifique se o AWS CLI está instalado
# O AWS CLI é necessário para interagir com a AWS.
# Se não estiver instalado, você pode baixá-lo e instalá-lo seguindo as instruções na documentação oficial da AWS.

# 2. Configure suas credenciais da AWS
# Antes de executar qualquer comando da AWS CLI, você precisa configurar suas credenciais da AWS.
# Você pode fazer isso usando o comando `aws configure` e fornecendo suas credenciais de acesso.

# 3. Defina as variáveis necessárias para a implantação
# Essas variáveis incluem o nome da equipe, o nome do stack do CloudFormation e o arquivo de template do CloudFormation.
TEAM_NAME="do-1"
STACK_NAME="${TEAM_NAME}-stack"
TEMPLATE_FILE="app.yml"

# 4. Execute o comando de implantação do CloudFormation
# Este comando cria ou atualiza o stack do CloudFormation com o arquivo de template fornecido.
# Ele também passa o nome da equipe como um parâmetro para o template.
aws cloudformation deploy \
    --template-file $TEMPLATE_FILE \
    --stack-name $STACK_NAME \
    --capabilities CAPABILITY_IAM \
    --parameter-overrides TeamName=$TEAM_NAME

# 5. Verifique o status da implantação
# Após a execução do comando de implantação, verifique se a implantação foi bem-sucedida.
# Você pode fazer isso usando o comando:

aws cloudformation describe-stacks --stack-name $STACK_NAME

# 6. Acesse o console da AWS para mais detalhes
# Se necessário, você pode acessar o console da AWS para obter mais detalhes sobre o status do stack e quaisquer recursos criados.

# Este script é uma referência prática e deve ser adaptado conforme necessário para atender aos requisitos específicos do seu projeto e ambiente.