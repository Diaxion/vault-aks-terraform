variable "prefix" {
  description = "Default prefix to use with your resource names."
}

variable "environment" {
  description = "The SDLC environment for this code."
}

# The list of regions is available at https://gist.github.com/ausfestivus/04e55c7d80229069bf3bc75870630ec8
variable "location" {
  description = "The location/region where the solution will be created."
}

# -----------------------------------------------------------------------------
# other configuration
# -----------------------------------------------------------------------------
variable "tags" {
  type = "map"

  default = {
    environment            = "develop"
    zone                   = "msdn"
    app                    = "vault-aks-terraform"
    project                = "{URL}"
    svcrepo                = "https://github.com/Diaxion/vault-aks-terraform"
    jiraServiceKBURL       = "{URL}"
    confluenceServiceKBURL = "{URL}"
    owner                  = "abest@diaxion.com"
    terraform              = "true"
    createdBy              = "abest@diaxion.com"
  }
}

variable "ssh_key_public" {}

#variable "ssh_key_private" {}

variable "ubuntu_user_secret" {}

variable "mssql_user_secret" {}
