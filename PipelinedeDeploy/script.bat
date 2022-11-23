echo "----------------------------- Criando database no Cluster Kubernetes---------------------------------"

kubectl apply -f ./mysql-deployment.yml --record

echo "----------------------------- Criando o Deployment---------------------------------"

kubectl apply -f ./app-deployment.yml --record