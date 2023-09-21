# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_STG-eee" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "eee"
    AccountName               = "eee"
    ManagedOrganizationalUnit = "SVC_STG"
    SSOUserEmail              = "eee"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = "LGCNS"
    "LGUplus:Owner"  = "eeee"
    "LGUplus:OwnerEmail" = "eee"
    "LGUplus:Service" = "eeee"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "eeee"
    change_reason       = "eeee"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "eee",
          "name"          = "eeee",
          "phone-number"  = "eee",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "empty@no.email",
          "name"          = "empty",
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