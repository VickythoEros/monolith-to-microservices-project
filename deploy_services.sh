cd ./udagram-deployment && kubectl apply -f aws-secret.yaml && kubectl apply -f env-secret.yaml && kubectl apply -f env-configmap.yaml && cd ..
cd ./udagram-api-feed && kubectl apply -f backend-feed-deployment.yaml && kubectl apply -f backend-feed-service.yaml && cd ..
cd ./udagram-api-user && kubectl apply -f backend-user-deployment.yaml && kubectl apply -f backend-user-service.yaml && cd ..
cd ./udagram-frontend && kubectl apply -f frontend-deployment.yaml && kubectl apply -f frontend-service.yaml && cd ..
cd ./udagram-reverseproxy && kubectl apply -f reverseproxy-deployment.yaml && kubectl apply -f reverseproxy-service.yaml && cd ..

kubectl get deployments


#kubectl set image deployment reverseproxy reverseproxy=vickytho/reverseproxy:v7
#kubectl set image deployment udagram-frontend udagram-frontend=vickytho/udagram-frontend:v7
#kubectl set image deployment udagram-api-feed udagram-api-feed=vickytho/udagram-api-feed:v7
#kubectl set image deployment udagram-api-user udagram-api-user=vickytho/udagram-api-user:v7

### autoscaling
#kubectl autoscale deployment reverseproxy --cpu-percent=50 --min=2 --max=10
#kubectl autoscale deployment udagram-frontend --cpu-percent=50 --min=2 --max=10
#kubectl autoscale deployment udagram-api-feed --cpu-percent=50 --min=2 --max=10
#kubectl autoscale deployment udagram-api-user --cpu-percent=50 --min=2 --max=10