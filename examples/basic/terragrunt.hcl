terraform {
    source = "../../"
}

inputs = {
    account_id = "381491888334"
    parent_org_id = "o-yqq398ew0q"
    backup_cron_schedule = "cron(0 12 * * ? *)"
    backup_selection_tags = { Name = ["test"]}
    name = "Test backup policy"
    target_resource_region = "eu-west-1"
    secondary_vault_region = "eu-west-3"
    vault_name = "My backup vault name"
}
