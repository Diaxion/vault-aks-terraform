# outputs

output "kube_config" {
  value = azurerm_kubernetes_cluster.vault-aks-terraform.kube_config_raw
}
