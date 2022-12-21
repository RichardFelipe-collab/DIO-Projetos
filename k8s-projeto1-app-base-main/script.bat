echo "Criando as imagens "

docker build -t richardbossdevelopersnake/projeto-backend:1.0 backend/.
docker build -t richardbossdevelopersnake/projeto-database:1.0 database/.

echo "Push das imagens"

docker push richardbossdevelopersnake/projeto-backend:1.0 
docker push richardbossdevelopersnake/projeto-database:1.0

echo "Criando serviços no cluster kubernetes .. "

kubectl apply -f ./services.yaml

echo "Criando os deployments"

kubectl apply -f ./deployment.yaml


