variable "key_name" { type = string }

variable "rsa_bits" {
  type = number
  default = 2048
}

variable "ecdsa_curve" {
  type = string
  default = "P521"
}

variable "encryption_algorithm" {
  type = string
  default = "ECDSA"
}

variable "write_private_key_file" {
  type = bool
  default = true
  description = "Should terraform write this keypair in ~/.ssh/?"
}

variable "write_public_key_file" {
  type = bool
  default = true
  description = "Should terraform write this keypair in ~/.ssh/?"
}

variable "ssh_folder_prefix" {
  type = string
  default = "~/.ssh"
}

variable "file_public_permission_mask" {
  type = number
  default = 644
}

variable "file_private_permission_mask" {
  type = number
  default = 600
}

variable "folder_permission_mask" {
  type = number
  default = 700
}

variable "keyfile_extension" {
  type = string
  default = "pub"
}