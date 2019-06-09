Terraform azure sql server sample with modules

The aim of this sample is to try and separate out infrastructure into different environments.

To run this, please set environment variables in the terminal/bash shell like so:

<!-- begin snippet: js hide: false console: true babel: false -->

<!-- language: lang-html -->

    export ARM_CLIENT_ID=zzz
    export ARM_SUBSCRIPTION_ID=yyy
    export ARM_TENANT_ID=zzz
    export ARM_CLIENT_SECRET=zzz

<!-- end snippet -->

where zzz and yyy are the values for the azure clientid, secret, tenantid and subscription.

Also, run "terraform init" from within the **subscriptions** folder.

To run this sample:
- run the export commands to set the variables
- cd into the subscriptions folder
- run *terraform init*
- run *terraform plan*
- run *terraform apply -auto-approve*
