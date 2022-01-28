# We use env vars to store the basic auth password for stage and production envs. Remember to add the variables as TF_VAR_ env vars.
variable "basic_auth_user" {
  type = string
}

variable "basic_auth_password" {
  type = string
}
