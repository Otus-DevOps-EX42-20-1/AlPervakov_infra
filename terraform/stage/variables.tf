variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}

variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}

variable zone {
  description = "Zona"
  default     = "europe-west1-b"
}

variable private_key {}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "app-base"
}

variable db_disk_image {
  description = "Disk image for db"
  default     = "db-base"
}
