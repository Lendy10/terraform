variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "name" {
  type = string
}

variable "network" {
  type = string
}

variable "ports" {
  type = list(any)
}

variable "source_ranges" {
  type = list(any)
}

variable "target_tags" {
  type = list(any)
}

