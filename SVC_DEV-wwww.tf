# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_DEV-wwww" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "www"
    AccountName               = "wwww"
    ManagedOrganizationalUnit = "SVC_DEV"
    SSOUserEmail              = "www"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = "LGCNS"
    "LGUplus:Owner"  = "www"
    "LGUplus:OwnerEmail" = "ww"
    "LGUplus:Service" = "wwww"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "www"
    change_reason       = "wwww"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "ww",
          "name"          = "www",
          "phone-number"  = "-www",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "ww",
          "name"          = "ww",
          "phone-number"  = "-ww",
          "title"         = "DevOps Team"
        },
        "security" = {
          "email-address" = "ww",
          "name"          = "wwww",
          "phone-number"  = "-ww",
          "title"         = "SOC Team"
        }
      }
    )
  }
  #  account_customizations_name = ""
}