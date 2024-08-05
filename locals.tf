locals {
 buckets = {
       demo0 = {
           name = "s3-sales-data-bucket"
        }
       demo1 = {
           name = "s3-marketing-data-bucket"
        }
       demo2 = {
           name = "s3-engineering-data-bucket"
        }
       demo3 = {
           name = "s3-finance-data-bucket"
        }
        demo4 = {
           name = "s3-operations-data-bucket"
        }
    }


# users_policy_attachment = {

#     alice = {
#       policy_name = "read_only-policy"
#    }
  
#     bob = {
#       data_readwrite = "write-read"
#    }

#    backup = {
#       policy_name = "write-policy"
#    }

#    charlie = {
#       policy_name = "write-policy"
#    }
# }

}


