variable "eks_version" {
  description = "EKS version"
  type        = string
  default     = "1.23"
}
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-1"
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "eks-cluster-with-argo"
}

variable "aws_default_tags" {
  description = "AWS default tags"
  type        = map(string)
  default = {
    Creator = "eks-cluster-with-argo"
  }
}

variable "argocd_apps_repo" {
  description = "Argocd apps repository."
  type        = string
  default     = "https://github.com/cac-toyamagu/terraform-kubernetes-bootstrap-argocd.git"
}

variable "argocd_apps_target_revision" {
  description = "Argocd apps target revision."
  type        = string
  default     = "main"
}

variable "source_cidrs" {
  description = "CIDRs for public access"
  type        = list(string)
  default     = ["0.0.0.0/0"]

}

variable "public_root_domain" {
  description = "Public root domain"
  type        = string
}

variable "sso_client_id" {
  description = "sso client id"
  type        = string
  default     = null
}

variable "sso_client_secret" {
  description = "sso client secret"
  type        = string
  default     = null
}

variable "github_org" {
  description = "GitHub organiztion for sso"
  type        = string
  default     = ""
}

variable "github_org_team" {
  description = "GitHub organiztion team for sso"
  type        = string
  default     = ""
}
