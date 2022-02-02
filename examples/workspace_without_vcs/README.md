# terraform-tfe-workspace

This example will manage the Terraform Cloud/Enterprise workspace without
connecting it to the GitHub repository.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/examples/workspace_without_vcs/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-workspace/blob/main/LICENSE) for full details.
