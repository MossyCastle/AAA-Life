##############################
##    Set IAM PW policy     ##
##############################
#   This module defines the IAM Password policy for the accounts
#   The policy is defined within the aws-set-iam-account-password-policy module
#   in attempt to ensure that the same policy gets set across all places that it is used

//Create ECR role
resource "aws_iam_user" "ecr-user" {
  name = "ecr-user"
  tags = {
    contact = "mossycastle@gmail.com"
  }
}

resource "aws_iam_user_policy_attachment" "attach-lecr-user" {
  user       = aws_iam_user.ecr-user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonElasticContainerRegistryPublicPowerUser"
}

/*
module "aws-set-iam-account-password-policy" {
  source  = "terraform.aaalife.com/AAALife/set-iam-account-password-policy/aws"
  version = "1.0.0"

  providers = {
    aws = aws.origin
  }
}

##############################
##    IAM 'root' User       ##
##############################
module "aws-iam-root-account-user" {
  source  = "terraform.aaalife.com/AAALife/iam-root-account-user/aws"
  version = "1.0.1"

  iam_root_user = var.iam_root_user
  providers = {
    aws = aws.origin
  }

}


module "aws-iam-multi-policy-create" {
  source                       = "terraform.aaalife.com/AAALife/iam-multi-policy-create/aws"
  version                      =  "1.0.1"

  list_of_enabled_iam_policies = ["aviatrix"]
  policy_folder_path = "../policies/iam-policy-definitions/"

  providers = {
    aws = aws.origin
  }
}

## Create Panorama User
resource "aws_iam_user" "panorama" {
  name = "panorama-user"
  tags = {
    contact = "WPerkins@aaalife.com"
  }
  provider = aws.origin
}

resource "aws_iam_access_key" "logrythm" {
  user = aws_iam_user.panorama.name
  provider = aws.origin
}

resource "aws_iam_user_policy_attachment" "attach-logrthm" {
  user       = aws_iam_user.panorama.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
  provider = aws.origin
}
*/
