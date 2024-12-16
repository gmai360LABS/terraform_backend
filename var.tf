variable "bucket_name" {
  type = string
  description = "Name of the S3 bucket"
}

variable "dynamodb_table_name" {
  type = string
  description = "Name of the DynamoDB table"
}

variable "dynamodb_hash_key" {
  type = string
  description = "Hash key name for the DynamoDB table"
}

variable "dynamodb_hash_key_type" {
  type = string
  description = "Hash key type for the DynamoDB table (e.g., 'S', 'N', 'B')"
  default = "S"
}

variable "block_public_acls" {
  type = bool
  description = "Block public ACLs on the S3 bucket"
  default = true
}

variable "block_public_policy" {
  type = bool
  description = "Block public bucket policies on the S3 bucket"
  default = true
}

variable "ignore_public_acls" {
  type = bool
  description = "Ignore public ACLs on the S3 bucket"
  default = true
}

variable "restrict_public_buckets" {
  type = bool
  description = "Restrict public bucket ownership on the S3 bucket"
  default = true
}

variable "sse_algorithm" {
  type = string
  description = "Server-side encryption algorithm for the S3 bucket (e.g., 'AES256', 'aws:kms')"
  default = "AES256"
}

variable "versioning_status" {
  type = string
  description = "Versioning status for the S3 bucket (e.g., 'Enabled', 'Suspended')"
  default = "Enabled"
}

variable "billing_mode" {
  type = string
  description = "Billing mode for the DynamoDB table (e.g., 'PAY_PER_REQUEST', 'PROVISIONED')"
  default = "PAY_PER_REQUEST"
}