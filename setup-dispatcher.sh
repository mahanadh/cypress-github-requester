#!/bin/bash

# Read the PR_NUMBER environment variable
PR_NUMBER=$PR_NUMBER

# Trigger remote repository using github API with user defined event_type: "new-code-has-been-added"
# Client PayLoad can include a host of parameters, variables to be exported to the sputnik-test-automation
curl -H "Accept: application/vnd.github.everest-preview+json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    --request POST \
    --data '{"event_type": "Test-Dispatch", "client_payload": { 
        "text": "Label has been attached",
        "repository_name": "cypress-github-requestor",
        "pr_number": "'"$PR_NUMBER"'"
        }
        }' \
    https://api.github.com/repos/mahanadh/cypress-github-acceptor/dispatches