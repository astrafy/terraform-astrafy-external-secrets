resource "kubernetes_manifest" "cluster_secret_stores" {
  for_each = var.cluster_secret_stores
  manifest = {
    apiVersion = "external-secrets.io/v1beta1"
    kind       = "ClusterSecretStore"
    metadata = {
      name = each.key
    }
    spec = {
      provider = {
        vault = {
          server  = var.vault_address
          path    = each.value.vault.kv_path
          version = "v2"
          auth = {
            kubernetes = {
              mountPath = each.value.auth.kubernetes.mount_path
              role      = "external-secrets"
              serviceAccountRef = {
                name      = each.value.auth.kubernetes.service_account_name
                namespace = each.value.auth.kubernetes.service_account_namespace
              }
            }
          }
        }
      }
    }
  }
}
