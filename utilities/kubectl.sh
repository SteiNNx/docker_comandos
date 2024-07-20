#!/bin/bash
# Autor: Jorge Reyes

# Comandos kubectl comunes para desarrolladores

# Obtener información sobre los nodos del clúster
kubectl get nodes

# Describir un nodo específico
kubectl describe node <node-name>

# Obtener información sobre los pods en el clúster
kubectl get pods

# Describir un pod específico
kubectl describe pod <pod-name>

# Ver los registros de un pod
kubectl logs <pod-name>

# Ejecutar un comando en un pod
kubectl exec -it <pod-name> -- <command>

# Obtener información sobre los servicios del clúster
kubectl get services

# Describir un servicio específico
kubectl describe service <service-name>

# Escalar un deployment
kubectl scale deployment <deployment-name> --replicas=<number>

# Obtener información sobre los deployments en el clúster
kubectl get deployments

# Crear o aplicar un archivo de configuración YAML
kubectl apply -f <file.yaml>

# Eliminar un recurso del clúster
kubectl delete <resource-type> <resource-name>

# Obtener ayuda y documentación de kubectl
kubectl help
kubectl --help

# Salir del script
exit 0
