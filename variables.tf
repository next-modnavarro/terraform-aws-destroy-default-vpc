variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "azs" {
  description = "List of AZs to manage using full AZ name"
  type        = list
  default     = ["us-east-1a"]
}
