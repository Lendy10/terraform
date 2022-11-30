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

variable "machine_type" {
  type = string
}

variable "tags" {
  type = list(any)
}

variable "image" {
  type = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "count" {
  type = string
}
