resource "vault_mount" "kv-v2" {
  depends_on = [vault_namespace.replicate-namespace]
  provider = vault.replicate-namespace
  path = "do-not-replicate-secrets"
  type = "kv-v2"
}