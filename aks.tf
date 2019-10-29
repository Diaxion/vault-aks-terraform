# Build our AKS cluster

# Some relevant useful doco
# About the AKS            https://docs.microsoft.com/en-gb/azure/aks/
# About Managed Identities https://docs.microsoft.com/en-us/azure/aks/use-managed-identity
# Read this re the Service Priniciple Kube needs https://docs.microsoft.com/en-gb/azure/aks/kubernetes-service-principal

resource "azurerm_kubernetes_cluster" "vault-aks-terraform" {
    name = var.prefix
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    dns_prefix = "${var.prefix}-rbac"

    agent_pool_profile {
        name            = "default"
        count           = 1
        vm_size         = "Standard_D1_v2"
        os_type         = "Linux"
        os_disk_size_gb = 30
    }

    service_principal {
        client_id     = var.kubernetes_client_id
        client_secret = var.kubernetes_client_secret
    }

    role_based_access_control {
        enabled = true

        azure_active_directory {
            # NOTE: in a Production environment these should be different values
            # but for the purposes of this example, this should be sufficient
            client_app_id = var.kubernetes_client_id

            server_app_id     = var.kubernetes_client_id
            server_app_secret = var.kubernetes_client_secret

            tenant_id = var.aad_tenant_id
        }
    }
    tags     = var.tags
}
