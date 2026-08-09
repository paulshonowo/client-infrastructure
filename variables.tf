variable "org_id" {
  description = "GCP Organization ID."
  type        = string
}

variable "project_id" {
  description = "GCP Project ID hosting root deployments."
  type        = string
  default     = "schoolgram-vault-admin"
}

variable "prefix" {
  description = "Prefix applied to all created infrastructure resources."
  type        = string
}

variable "environment" {
  description = "Target deployment environment."
  type        = string
  default     = "prod"
}

variable "region" {
  description = "Primary target GCP Region."
  type        = string
}

variable "github_org" {
  description = "GitHub Organization owning application code."
  type        = string
}

variable "github_repo" {
  description = "GitHub Infrastructure repository name."
  type        = string
}

variable "module_repo_name" {
  description = "GitHub repository hosting golden core modules."
  type        = string
}

variable "module_version" {
  description = "Git release tag to pin core module versions."
  type        = string
  default     = "v1.1.0"
}