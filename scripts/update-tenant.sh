#!/bin/bash -xe

# TODO: Verify all env vars are being set according to tenantTemplateStack.
export CDK_PARAM_CONTROL_PLANE_SOURCE='sbt-control-plane-api'
export CDK_PARAM_ONBOARDING_DETAIL_TYPE='Onboarding'
export CDK_PARAM_PROVISIONING_DETAIL_TYPE=$CDK_PARAM_ONBOARDING_DETAIL_TYPE
export CDK_PARAM_APPLICATION_NAME_PLANE_SOURCE="sbt-application-plane-api"
export CDK_PARAM_OFFBOARDING_DETAIL_TYPE='Offboarding'
export CDK_PARAM_DEPROVISIONING_DETAIL_TYPE=$CDK_PARAM_OFFBOARDING_DETAIL_TYPE
export CDK_PARAM_PROVISIONING_EVENT_SOURCE="sbt-application-plane-api"
export CDK_PARAM_CODE_COMMIT_REPOSITORY_NAME="aws-saas-factory-ref-solution-serverless-saas"
export CDK_PARAM_LAMBDA_CANARY_DEPLOYMENT_PREFERENCE="true"
export CDK_PARAM_COMMIT_ID=$CODE_COMMIT_ID
echo "CDK_PARAM_COMMIT_ID: $CDK_PARAM_COMMIT_ID"

# TODO: Not required for tenantTemplateStack. Test before removing.
export CDK_PARAM_SYSTEM_ADMIN_EMAIL="$EMAIL",

cd server/
npm install

npx cdk deploy --stacks $STACK_NAME --all --require-approval never
