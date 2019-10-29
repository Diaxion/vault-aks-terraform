# -----------------------------------------------------------------------------
# foundation configuration
# -----------------------------------------------------------------------------

prefix = "vault-aks-terraform"
environment = "develop"
location = "australiaeast"

# -----------------------------------------------------------------------------
# kube configuration
# -----------------------------------------------------------------------------

# kubernetes_client_id = ""
# kubernetes_client_secret = ""
aad_tenant_id = "a5aa424e-5d6f-47c9-bf70-a1310f4be302"

# -----------------------------------------------------------------------------
# other configuration items
# -----------------------------------------------------------------------------
#ssh_key_private = "{ENTER YOUR VALUE HERE}"
ssh_key_public = "{ENTER YOUR VALUE HERE}"
ubuntu_user_secret = "{ENTER YOUR VALUE HERE}"
mssql_user_secret = "{ENTER YOUR VALUE HERE}"
dns_zone_name = "cloud00.bestfamily.id.au" # The DNS domain under which we do want our DNS records to be created.
dns_zone_rg = "rgDNSZones" # The resource group name that the above DNS domain is in.
