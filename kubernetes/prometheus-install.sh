curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
helm repo update

helm install prometheus prometheus-community/kube-prometheus-stack


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install mysql-exporter prometheus-community/prometheus-mysql-exporter



kubectl apply -f .


kubectl port-forward deployment/prometheus-grafana 3000

kubectl port-forward service/mysql-exporter-prometheus-mysql-exporter 9104


minikube service phpmyadmin-service
