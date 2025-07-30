# aws-lz-central-backups-module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> v1.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 6.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_policy.backup_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID | `string` | n/a | yes |
| <a name="input_backup_cron_schedule"></a> [backup\_cron\_schedule](#input\_backup\_cron\_schedule) | Cron schedule for backup plan | `string` | n/a | yes |
| <a name="input_backup_delete_after"></a> [backup\_delete\_after](#input\_backup\_delete\_after) | Specifies the number of days after creation that a recovery point is deleted. Must be 90 days greater than cold\_storage\_after | `number` | `270` | no |
| <a name="input_backup_selection_role_name"></a> [backup\_selection\_role\_name](#input\_backup\_selection\_role\_name) | Unique name for the backup policy | `string` | `"backup-selection-role"` | no |
| <a name="input_backup_selection_tags"></a> [backup\_selection\_tags](#input\_backup\_selection\_tags) | Specifies the tags that identify the resources to be backed up | `map(list(string))` | n/a | yes |
| <a name="input_cold_storage_after"></a> [cold\_storage\_after](#input\_cold\_storage\_after) | Specifies the number of days after creation that a recovery point is moved to cold storage | `number` | `90` | no |
| <a name="input_completion_window"></a> [completion\_window](#input\_completion\_window) | The amount of time in minutes AWS Backup attempts a backup before canceling the job and returning an error. | `number` | `360` | no |
| <a name="input_name"></a> [name](#input\_name) | Unique name for the backup policy | `string` | n/a | yes |
| <a name="input_parent_org_id"></a> [parent\_org\_id](#input\_parent\_org\_id) | Parent Organization ID | `string` | n/a | yes |
| <a name="input_secondary_vault_region"></a> [secondary\_vault\_region](#input\_secondary\_vault\_region) | The secondary AWS region to store copies of backup from the target region | `string` | n/a | yes |
| <a name="input_start_window_minutes"></a> [start\_window\_minutes](#input\_start\_window\_minutes) | Specifies the number of minutes to wait before canceling a job that does not start successfully | `number` | `60` | no |
| <a name="input_target_resource_region"></a> [target\_resource\_region](#input\_target\_resource\_region) | The AWS target region for this policy to scan for resources | `string` | n/a | yes |
| <a name="input_vault_name"></a> [vault\_name](#input\_vault\_name) | Unique name for the backup vault | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
