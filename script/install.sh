git clone https://github.com/microsoft/azure_arc.git
az --version
az login
subscriptionId=$(az account show --query id --output tsv)
az ad sp create-for-rbac -n "<Unique SP Name>" --role "Contributor" --scopes /subscriptions/$subscriptionId
