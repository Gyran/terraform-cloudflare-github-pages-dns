variable "zone_id" {
  description = "The DNS zone ID to add the record to"
  type        = string
}

variable "username" {
  description = "GitHub username"
  type        = string
}

variable "domain" {
  description = "Domain where the page can be accessed"
  type        = string
  default     = "www"
}
