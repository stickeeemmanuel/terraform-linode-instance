# terraform-linode-instance

# Use the commands below to encrypt and decrypt the terraform.tfvars
ansible-vault encrypt terraform.tfvars --vault-password-file ~/.ansible/vault_pass.txt

ansible-vault decrypt terraform.tfvars --vault-password-file ~/.ansible/vault_pass.txt