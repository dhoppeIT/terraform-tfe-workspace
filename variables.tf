variable "name" {
  type        = string
  description = "Name of the workspace"
}

variable "organization" {
  type        = string
  description = "Name of the organization"
}

variable "description" {
  type        = string
  default     = null
  description = "A description for the workspace"
}

variable "agent_pool_id" {
  type        = string
  default     = null
  description = "The ID of an agent pool to assign to the workspace"
}

variable "allow_destroy_plan" {
  type        = bool
  default     = true
  description = "Whether destroy plans can be queued on the workspace"
}

variable "auto_apply" {
  type        = bool
  default     = false
  description = "Whether to automatically apply changes when a Terraform plan is successful"
}

variable "execution_mode" {
  type        = string
  default     = "remote"
  description = "Which execution mode to use"
}

variable "file_triggers_enabled" {
  type        = bool
  default     = true
  description = "Whether to filter runs based on the changed files in a VCS push"
}

variable "global_remote_state" {
  type        = bool
  default     = false
  description = "Whether the workspace allows all workspaces in the organization to access its state data during runs"
}

variable "remote_state_consumer_ids" {
  type        = list(string)
  default     = []
  description = "The set of workspace IDs set as explicit remote state consumers for the given workspace"
}

variable "queue_all_runs" {
  type        = bool
  default     = true
  description = "Whether the workspace should start automatically performing runs immediately after its creation"
}

variable "speculative_enabled" {
  type        = bool
  default     = true
  description = "Whether this workspace allows speculative plans"
}

variable "structured_run_output_enabled" {
  type        = bool
  default     = true
  description = "Whether this workspace should show output from Terraform runs using the enhanced UI when available"
}

variable "ssh_key_id" {
  type        = string
  default     = null
  description = "The ID of an SSH key to assign to the workspace"
}

variable "terraform_version" {
  type        = string
  default     = null
  description = "The version of Terraform to use for this workspace"
}

variable "trigger_prefixes" {
  type        = list(string)
  default     = []
  description = "List of repository-root-relative paths which describe all locations to be tracked for changes"
}

variable "tag_names" {
  type        = list(string)
  default     = []
  description = "A list of tag names for this workspace"
}

variable "working_directory" {
  type        = string
  default     = null
  description = "A relative path that Terraform will execute within"
}

variable "identifier" {
  type        = string
  description = "A reference to your VCS repository in the format <organization>/<repository>"
}

variable "branch" {
  type        = string
  default     = null
  description = "The repository branch that Terraform will execute from"
}

variable "ingress_submodules" {
  type        = bool
  default     = false
  description = "Whether submodules should be fetched when cloning the VCS repository"
}

variable "oauth_token_id" {
  type        = string
  description = "The VCS Connection (OAuth Connection + Token) to use"
}
