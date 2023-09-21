# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

module "SVC_STG-sports-stg" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sports@ggg.com"
    AccountName               = "sports-stg"
    ManagedOrganizationalUnit = "SVC_STG"
    SSOUserEmail              = "sports@ggg.com"
    SSOUserFirstName          = "alpha"
    SSOUserLastName           = "shr"
  }

  account_tags = {
    "LGUplus:MSP"    = LGCNS
    "LGUplus:Owner"  = "이대영/클라우드CoE"
    "LGUplus:OwnerEmail" = "dae93827@gmail.com"
    "LGUplus:Service" = "스포츠플랫폼"
    "LGUplus:Vended" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "이대영/클라우드CoE"
    change_reason       = "스포츠플랫폼"
  }

  custom_fields = {
    alternate_contact = jsonencode(
      {
        "billing" = {
          "email-address" = "dae93827@gmail.com",
          "name"          = "이대영/클라우드CoE",
          "phone-number"  = "01075377036",
          "title"         = "Billing Department"
        },
        "operations" = {
          "email-address" = "dmkim22@lglg.co",
          "name"          = "김동민/클라우드CoE",
          "phone-number"  = "01099999999",
          "title"         = "DevOps Team"
        },
        "security" = {
          "email-address" = "youngtaik@lgg.com",
          "name"          = "조영택",
          "phone-number"  = "01022221111",
          "title"         = "SOC Team"
        }
      }
    )
  }
  #  account_customizations_name = ""
}