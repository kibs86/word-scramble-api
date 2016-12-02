#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-up"
EMAIL="test789@789.com"
PASSWORD="t"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
      "credentials": {
        "email": "'"${EMAIL}"'",
        "password": "'"${PASSWORD}"'",
        "password_confirmation": "'"${PASSWORD}"'"
      }
    }'

echo
