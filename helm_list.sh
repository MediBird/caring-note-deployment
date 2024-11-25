helm install postgres bitnami/postgresql -n  -f postgres/values.yaml
helm install keycloak bitnami/keycloak -n  -f keycloak-values.yaml
kubectl apply -f api-deployment.yaml
kubectl apply -f api-service.yaml
kubectl apply -f web-deployment.yaml
kubectl apply -f web-service.yaml
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install ingress-nginx-release ingress-nginx/ingress-nginx
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.8.0/cert-manager.yaml
kubectl apply -f cluster-issuer.yaml
helm repo add oauth2-proxy https://oauth2-proxy.github.io/manifests
helm install oauth2-proxy-release oauth2-proxy/oauth2-proxy -n medical-app -f oauth2-proxy-values.yaml


