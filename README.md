<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >=2.16.0, <3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.18.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.cluster_secret_stores](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_secret_stores"></a> [cluster\_secret\_stores](#input\_cluster\_secret\_stores) | n/a | <pre>map(object({<br>    vault = object({<br>      kv_path = string<br>    })<br>    auth = object({<br>      kubernetes = object({<br>        mount_path                = string<br>        service_account_name      = string<br>        service_account_namespace = string<br>      })<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault address | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->