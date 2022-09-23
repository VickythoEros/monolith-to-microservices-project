cd ./udagram-deployment && kubectl apply -f aws-secret.yaml && kubectl apply -f env-secret.yaml && kubectl apply -f env-configmap.yaml && cd ..
cd ./udagram-api-feed && kubectl apply -f backend-feed-deployment.yaml && kubectl apply -f backend-feed-service.yaml && cd ..
cd ./udagram-api-user && kubectl apply -f backend-user-deployment.yaml && kubectl apply -f backend-user-service.yaml && cd ..
cd ./udagram-frontend && kubectl apply -f frontend-deployment.yaml && kubectl apply -f frontend-service.yaml && cd ..
cd ./udagram-reverseproxy && kubectl apply -f reverseproxy-deployment.yaml && kubectl apply -f reverseproxy-service.yaml && cd ..

kubectl get deployments