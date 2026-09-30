type = string | number | bool
type = list(string) | set(string) | map(string)
type = object({ name = string, size = optional(number, 2) })
sensitive = true    keep it out of plan output and the console
nullable  = false   an explicit null is not an acceptable value
