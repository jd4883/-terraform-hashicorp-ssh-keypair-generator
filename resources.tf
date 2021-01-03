resource "tls_private_key" "keypair" {
  algorithm = local.encryption.algorithm
  ecdsa_curve = local.encryption.curve
  rsa_bits = local.encryption.bits
}

resource "local_file" "private_key" {
  count = var.write_private_key_file ? 1 : 0
  filename = pathexpand(local.keyfile_name)
  content = local.key_data.private
  file_permission = local.permission_mask.file.private
  directory_permission = local.permission_mask.folder.private
}

resource "local_file" "public_key" {
  count = var.write_public_key_file ? 1 : 0
  filename = pathexpand(join(".", [local.keyfile_name, var.keyfile_extension]))
  content = local.key_data.public
  file_permission = local.permission_mask.file.public
  directory_permission = local.permission_mask.folder.public
}
