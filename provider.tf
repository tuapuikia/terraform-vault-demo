variable vault_addr {}
variable vault_namespace {}
variable token {}

provider "vault" {
  address   = var.vault_addr
  namespace = var.vault_namespace
  token     = var.token
}
