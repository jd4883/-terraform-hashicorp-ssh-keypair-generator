locals {
  encryption = {
    algorithm = var.encryption_algorithm
    curve = var.ecdsa_curve
    bits = var.rsa_bits
  }
  keyfile_name = join("/", [var.ssh_folder_prefix, var.key_name])
  key_data = {
    private = tls_private_key.keypair.private_key_pem
    public = tls_private_key.keypair.public_key_openssh
  }
  permission_mask = {
    folder = {
      private = "0${var.folder_permission_mask}"
      public = "0${var.folder_permission_mask}"
    }
    file = {
      private = "0${var.file_private_permission_mask}"
      public = "0${var.file_public_permission_mask}"
    }
  }
}