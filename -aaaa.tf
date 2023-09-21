# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "-aaaa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aaaaa"
    AccountName               = "aaaa"
    ManagedOrganizationalUnit = ""
    SSOUserEmail              = "aaaaa"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = ""
    "LGUplus:Owner"  = "aaaa"
    "LGUplus:OwnerEmail" = "aaaa"
    "LGUplus:Service" = "aaaaa"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "aaaaa"
    change_reason       = "aaaaa"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "aaaa",
          "name"          = "aaaa",
          "phone-number"  = "aaaa",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "aaaaa",
          "name"          = "aaaaa",
          "phone-number"  = "aaaaa",
          "title"         = "DevOps Team"
        },
        "security" = {
          "email-address" = "aaaaa",
          "name"          = "aaaa",
          "phone-number"  = "aaaaa",
          "title"         = "SOC Team"
        }
      }
    )
  }
  #  account_customizations_name = ""
}