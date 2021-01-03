output "private_key" { value = try(local_file.private_key.0, "") }
output "public_key" { value = try(local_file.public_key.0, "") }
output "keypair" { value = tls_private_key.keypair }