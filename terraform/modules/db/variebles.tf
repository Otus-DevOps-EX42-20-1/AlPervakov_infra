variable db_disk_image {
  description = "Disk image for db"
  default     = "db-base"
}

variable zone {
  description = "Zona"
  default     = "europe-west1-b"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
