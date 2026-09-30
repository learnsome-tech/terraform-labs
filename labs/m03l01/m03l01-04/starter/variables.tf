variable "environment" {
  description = "Name of the environment this configuration builds."
  type        = string
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment must be dev, staging or prod."
  }
}
variable "instance_count" {
  description = "How many application machines to run."
  type        = number
  default     = 2
}
variable "tags" {
  description = "Tags applied to everything this configuration creates."
  type        = map(string)
  default     = {}
}
