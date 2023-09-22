#! ./bin/bash

# . ./EnvironmentSetup.bash

# az login

export MSYS_NO_PATHCONV=1

az ad sp create-for-rbac \
        --name "$PSW_STWS_NAME" \
        --role contributor \
        --scopes /subscriptions/$PSW_SUB_ID/resourceGroups/$PSW_RG_NAME \
        --sdk-auth