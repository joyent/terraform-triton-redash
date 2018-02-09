#
# Variables
#
variable "name" {
  description = "The name of the environment."
  type        = "string"
}

variable "image" {
  description = "The image to deploy as the Presto machine(s)."
  type        = "string"
}

variable "package" {
  description = "The package to deploy as the Presto machine(s)."
  type        = "string"
}

variable "networks" {
  description = "The networks to deploy the Presto machine(s) within."
  type        = "list"
}

variable "private_key_path" {
  description = "The path to the private key to use for provisioning machines."
  type        = "string"
}

variable "user" {
  description = "The user to use for provisioning machines."
  type        = "string"
  default     = "root"
}

variable "role_tag" {
  description = "The 'role' tag for the Presto machine(s)."
  type        = "string"
  default     = "presto"
}

variable "provision" {
  description = "Boolean 'switch' to indicate if Terraform should do the machine provisioning to install and configure Presto."
  type        = "string"
}

variable "version_redash" {
  default     = "3.0.0.b3134"
  description = "The version of Presto to install. See https://repo1.maven.org/maven2/com/facebook/presto/presto-server/."
  type        = "string"
}

variable "cns_service_name_redash" {
  description = "The Redash service name. Note: this is the service name only, not the full CNS record."
  type        = "string"
  default     = "redash"
}

variable "cns_service_name_presto_coordinator" {
  description = "The Presto Coordinator CNS service name. Note: this is the service name only, not the full CNS record."
  type        = "string"
  default     = "presto-coordinator"
}

variable "client_access" {
  description = <<EOF
'From' targets to allow client access to Presto' web port - i.e. access from other VMs or public internet.
See https://docs.joyent.com/public-cloud/network/firewall/cloud-firewall-rules-reference#target
for target syntax.
EOF

  type    = "list"
  default = ["any"]
}

variable "cns_fqdn_base" {
  description = "The fully qualified domain name base for the CNS address - e.g. 'cns.joyent.com' for Joyent Public Cloud."
  type        = "string"
  default     = "cns.joyent.com"
}

variable "bastion_host" {
  description = "The Bastion host to use for provisioning."
  type        = "string"
}

variable "bastion_user" {
  description = "The Bastion user to use for provisioning."
  type        = "string"
}

variable "bastion_role_tag" {
  description = "The 'role' tag for the Presto machine(s) to allow access FROM the Bastion machine(s)."
  type        = "string"
}
