Requirement:
  1. Terraform > 0.12
  2. Vault server (Enterprise Edition)
  3. Vault CLI
  4. Vault token
  5. Secret stored in vault

Environment Variables:
: export TF_VAR_vault_addr=http://localhost:8200
: export TF_VAR_vault_namespace=<my project namespace>
: export TF_VAR_token=<my vault token>
: export VAULT_ADDR=http://localhost:8200
: export VAULT_NAMESPACE=<my project namespace>
: export VAULT_TOKEN=<my vault token>


Step 1:
  1. vault kv put secret/data/demo SAMPLE_API_KEY=<this is my super api key id> SAMPLE_PASSWORD=<this is my super secret>

Step 2:
  1. terraform plan
  2. terraform apply
