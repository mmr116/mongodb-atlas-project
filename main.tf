terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.14.0"
    }
  }
}

provider "mongodbatlas" {
  public_key  = var.mongodb_atlas_public_key
  private_key = var.mongodb_atlas_private_key
}

variable "mongodb_atlas_public_key" {
  description = "MongoDB Atlas public API key"
}

variable "mongodb_atlas_private_key" {
  description = "MongoDB Atlas private API key"
}

variable "mongodb_atlas_org_id" {
  description = "MongoDB Atlas organization ID"
}

resource "mongodbatlas_project" "example" {
  org_id  = var.mongodb_atlas_org_id
  name    = var.mongodb_atlas_project_name
}

variable "mongodb_atlas_project_name" {
  description = "Name of the MongoDB Atlas project"
}

variable "TF_API_TOKEN" {
  description = "Terraform Cloud API token"
}
