/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: MIT-0
 */
import { AuthProviders } from "../../auth-providers.enum";
import { AuthPluginConfig } from '../../provider-plugin.interface';

export const auth0ProviderConfig: AuthPluginConfig = {
  provider: AuthProviders.Sample,
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
