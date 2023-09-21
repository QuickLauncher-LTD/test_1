# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_STG-ssss" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sss"
    AccountName               = "ssss"
    ManagedOrganizationalUnit = "SVC_STG"
    SSOUserEmail              = "sss"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = "LGCNS"
    "LGUplus:Owner"  = "ssss"
    "LGUplus:OwnerEmail" = "ssss"
    "LGUplus:Service" = "sssss"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "ssss"
    change_reason       = "sssss"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "ssss",
          "name"          = "ssss",
          "phone-number"  = "ssss",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "ssss",
          "name"          = "ssss",
          "phone-number"  = "-",
          "title"         = "DevOps Team"
        },
        "security" = {
          "email-address" = "empty@no.email",
          "name"          = "empty",
          "phone-number"  = "-",
          "title"         = "SOC Team"
        }
      }
    )
  }
  #  account_customizations_name = ""
}