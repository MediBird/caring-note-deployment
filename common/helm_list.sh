helm install postgres bitnami/postgresql -n  -f postgres/values.yaml
helm install keycloak bitnami/keycloak -n  -f keycloak-values.yaml
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm install ingress-nginx-release ingress-nginx/ingress-nginx
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.8.0/cert-manager.yaml
kubectl apply -f cluster-issuer.yaml


