/*
before proceeding make
    aws configure --profile dotw-management
Then provide AWS CLI :
    access key
    secret key
    region
    output format
*/

aws_profile        = "dotw-management"
aws_region         = "eu-central-1"
budget_name        = "dotw-management-budget"
budget_limit_amount = "5"
notification_email = "todor.a.milkotev@gmail.com"