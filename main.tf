# 1. Preventive Controls Module Call
module "preventive_controls" {
  source = "git::ssh://git@github.com/paulshonowo/caa-architect-ip.git//modules/preventive-controls?ref=v1.1.0"

  org_id            = var.org_id
  enforce_policies  = true
  allowed_locations = ["in:eu-locations"]
}

# 2. Network Perimeter Shield Module Call
module "networking" {
  source = "git::ssh://git@github.com/paulshonowo/caa-architect-ip.git//modules/networking?ref=v1.1.0"

  project_id     = var.project_id
  prefix         = var.prefix
  environment    = var.environment
  region         = var.region
  subnet_cidr    = "10.100.0.0/20"
  pods_cidr      = "10.101.0.0/16"
  services_cidr  = "10.102.0.0/20"
  nat_log_level  = "ALL"
  vpc_sc_dry_run = false
}

# 3. IAM & Identity Hardening Module Call
module "iam" {
  source = "git::ssh://git@github.com/paulshonowo/caa-architect-ip.git//modules/iam?ref=v1.1.0"

  project_id           = var.project_id
  prefix               = var.prefix
  github_org           = var.github_org
  github_repo          = var.github_repo
  jit_expiry_timestamp = "2026-12-31T23:59:59Z"
}