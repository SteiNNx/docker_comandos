#!/bin/bash
# Autor: Jorge Reyes

# Comandos AWS comunes para desarrolladores

# Configurar las credenciales y región de AWS
aws configure

# Obtener información sobre una instancia EC2
aws ec2 describe-instances

# Listar y detener instancias EC2
aws ec2 describe-instances
aws ec2 stop-instances --instance-ids <instance-id>

# Crear un clúster de Amazon EKS
aws eks create-cluster --name <cluster-name> --role-arn <role-arn> --resources-vpc-config <vpc-config>

# Describir un clúster de Amazon EKS
aws eks describe-cluster --name <cluster-name>

# Listar y administrar roles IAM
aws iam list-roles
aws iam create-role --role-name <role-name> --assume-role-policy-document <policy-document>
aws iam attach-role-policy --role-name <role-name> --policy-arn <policy-arn>

# Crear y administrar tablas DynamoDB
aws dynamodb create-table --table-name <table-name> --attribute-definitions <attribute-definitions> --key-schema <key-schema> --billing-mode <billing-mode>
aws dynamodb describe-table --table-name <table-name>
aws dynamodb put-item --table-name <table-name> --item <item>

# Desplegar una función Lambda
aws lambda create-function --function-name <function-name> --runtime nodejs14.x --handler index.handler --role <role-arn> --zip-file fileb://function.zip
aws lambda invoke --function-name <function-name> --payload '{"key": "value"}' output.json

# Listar y administrar funciones Lambda
aws lambda list-functions
aws lambda update-function-code --function-name <function-name> --zip-file fileb://function.zip
aws lambda delete-function --function-name <function-name>

# Obtener ayuda y documentación de AWS CLI
aws help
aws <service> help

# Salir del script
exit 0
