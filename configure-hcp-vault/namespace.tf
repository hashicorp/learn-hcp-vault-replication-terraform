resource "vault_namespace" "replicate-namespace" {
  provider = vault.admin
  path = "replicate-namespace"
}

provider "vault" {
  alias = "replicate-namespace"
  namespace = "admin/replicate-namespace"
}

resource "vault_namespace" "do-not-replicate-namespace" {
  provider = vault.admin
  path = "do-not-replicate-namespace"
}

provider "vault" {
  alias = "do-not-replicate-namespace"
  namespace = "admin/do-not-replicate-namespace"
}