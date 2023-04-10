git clone https://github.com/microsoft/azure_arc.git
az --version
az login
subscriptionId=$(az account show --query id --output tsv)
az ad sp create-for-rbac -n "<Unique SP Name>" --role "Contributor" --scopes /subscriptions/$subscriptionId
az provider register --namespace Microsoft.Kubernetes
az provider register --namespace Microsoft.KubernetesConfiguration
az provider register --namespace Microsoft.ExtendedLocation
az extension add --name connectedk8s
az extension add --name k8s-configuration
sudo snap install microk8s --classic
