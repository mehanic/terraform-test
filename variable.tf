variable "env-prefix" {
    type    = set(string)
    default = ["alice", "bob", "backup", "charlie"]
}


variable "buckets" {
  type        = set(string)
  default     = ["sales-data-bucket", "marketing-data-bucket", "engineering-data-bucket", "finance-data-bucket", "operations-data-bucket"]

}
