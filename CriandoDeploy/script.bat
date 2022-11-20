echo "-------------Criando as imagens----------------"

docker build -t thamyresarm/project-backend:1.0 backend/.
docker build -t thamyresarm/project-database:1.0 backend/.

echo "--------------Realizando o push das imagens no dockerHub------------"

docker push thamyresarm/project-backend:1.0
docker push thamyresarm/project-database:1.0

echo "----------------------------- Crianco Serviços no Cluster Kubernetes---------------------------------"

kubectl apply -f ./services.yml

echo "----------------------------- Crianco os Deployments---------------------------------"

kubectl apply -f ./deployment.yml