#!/bin/bash

# Trigger remote repository using github API with user defined event_type: "new-code-has-been-added"
# Client PayLoad can include a host of parameters, variables to be exported to the sputnik-test-automation
curl -H "Accept: application/vnd.github.everest-preview+json" \
    -H "Authorization: token $GITHUB_TOKEN" \
    --request POST \
    --data '{"event_type": "Test-Dispatch", "client_payload": { "text": "A new code has been pushed into this repository"}}' \
    https://api.github.com/repos/cypress-github-acceptor/dispatches
