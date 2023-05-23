variable "token" {
  description = "Your APIv4 Access Token"
}

variable "region" {
  description = "The data center where your NodeBalancer and Nodes will reside. E.g., 'us-east'."
  default     = "eu-west"
}

variable "ssh-key" {
  description = "SSH key"
}