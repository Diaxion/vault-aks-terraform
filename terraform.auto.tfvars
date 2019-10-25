# -----------------------------------------------------------------------------
# foundation configuration
# -----------------------------------------------------------------------------

prefix = "vault-aks-terraform"
location = "australiaeast"
environment = "develop"

# -----------------------------------------------------------------------------
# other configuration items
# -----------------------------------------------------------------------------
#ssh_key_private = "{ENTER YOUR VALUE HERE}"
ssh_key_public = "{ENTER YOUR VALUE HERE}"
ubuntu_user_secret = "{ENTER YOUR VALUE HERE}"
mssql_user_secret = "{ENTER YOUR VALUE HERE}"
#dns_zone_name = "cloud00.bestfamily.id.au" # The DNS domain under which we do want our DNS records to be created.
#dns_zone_rg = "rgDNSZones" # The resource group name that the above DNS domain is in.