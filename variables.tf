variable "cluster_secret_stores" {
  type = map(object({
    vault = object({
      kv_path = string
    })
    auth = object({
      kubernetes = object({
        mount_path                = string
        service_account_name      = string
        service_account_namespace = string
      })
    })
  }))
  default = {}
}

variable "vault_address" {
  type        = string
  description = "Vault address"
}
