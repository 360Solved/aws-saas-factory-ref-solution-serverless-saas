/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 */
import { AuthProviders } from "../../models/auth-providers.enum";

export const providerConfig = {
  provider: AuthProviders.Auth0,
  claimsMap: [{
    attribute: "UserName",
    claim: "name"
  },
  {
    attribute: "Email",
    claim: "name"
  },
  {
    attribute: "CompanyName",
    claim: "https://companyName"
  }]
}
