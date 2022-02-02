module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.3"

  name  = local.organization_name
  email = local.organization_email
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = local.workspace_name
  organization = module.tfe_organization.name
}
