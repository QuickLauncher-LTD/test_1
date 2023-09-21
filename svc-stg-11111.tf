# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_STG-11111" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "11111"
    AccountName               = "11111"
    ManagedOrganizationalUnit = "SVC_STG"
    SSOUserEmail              = "11111"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = "LGCNS"
    "LGUplus:Owner"  = "11111"
    "LGUplus:OwnerEmail" = "11111"
    "LGUplus:Service" = "11111"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "11111"
    change_reason       = "11111"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "11111",
          "name"          = "11111",
          "phone-number"  = "11111",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "11111",
          "name"          = "11111",
          "phone-number"  = "11111",
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