provider "aws" {
  #access_key = "<your-wasabi-access-key>"
  #secret_key = "<your-wasabi-secret-key>"
  shared_credentials_files = ["~/.aws/credentials"]
  region     = "us-east-1" # Use the appropriate Wasabi region
 # endpoint   = "https://s3.wasabisys.com"
 # skip_credentials_validation = true
 # skip_requesting_account_id  = true
 # s3_force_path_style         = true
}
