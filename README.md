# terraform-tfe-workspace

Terraform module to manage the following Terraform Cloud/Enterprise resource:

* tfe_workspace

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.3"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = "terraform"
  organization = module.tfe_organization.name
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | The ID of an agent pool to assign to the workspace | `string` | `null` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans can be queued on the workspace | `bool` | `true` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The repository branch that Terraform will execute from | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | A description for the workspace | `string` | `null` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Which execution mode to use | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Whether to filter runs based on the changed files in a VCS push | `bool` | `true` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | Whether the workspace allows all workspaces in the organization to access its state data during runs | `bool` | `false` | no |
| <a name="input_identifier"></a> [identifier](#input\_identifier) | A reference to your VCS repository in the format <organization>/<repository> | `string` | `null` | no |
| <a name="input_ingress_submodules"></a> [ingress\_submodules](#input\_ingress\_submodules) | Whether submodules should be fetched when cloning the VCS repository | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the workspace | `string` | n/a | yes |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | The VCS Connection (OAuth Connection + Token) to use | `string` | `null` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the organization | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | Whether the workspace should start automatically performing runs immediately after its creation | `bool` | `true` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | The set of workspace IDs set as explicit remote state consumers for the given workspace | `list(string)` | `[]` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Whether this workspace allows speculative plans | `bool` | `true` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | The ID of an SSH key to assign to the workspace | `string` | `null` | no |
| <a name="input_structured_run_output_enabled"></a> [structured\_run\_output\_enabled](#input\_structured\_run\_output\_enabled) | Whether this workspace should show output from Terraform runs using the enhanced UI when available | `bool` | `true` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | A list of tag names for this workspace | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use for this workspace | `string` | `null` | no |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | List of repository-root-relative paths which describe all locations to be tracked for changes | `list(string)` | `[]` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | A relative path that Terraform will execute within | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The workspace ID |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/LICENSE) for full details.
