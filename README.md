# terraform-tfe-workspace

Terraform module to manage the Terraform Cloud/Enterprise resource
(tfe_workspace).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe-organization" {
  source = "dhoppeIT/organization/tfe"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe-workspace" {
  source = "dhoppeIT/workspace/tfe"

  name         = "terraform"
  organization = module.tfe-organization.name
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/LICENSE) for full details.
