# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_PRD-fff" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "fff"
    AccountName               = "fff"
    ManagedOrganizationalUnit = "SVC_PRD"
    SSOUserEmail              = "fff"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = "LGCNS"
    "LGUplus:Owner"  = "fff"
    "LGUplus:OwnerEmail" = "fff"
    "LGUplus:Service" = "ffff"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "fff"
    change_reason       = "ffff"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "fff",
          "name"          = "fff",
          "phone-number"  = "-fff",
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