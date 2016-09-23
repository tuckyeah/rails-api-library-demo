# create
curl --include --request POST http://localhost:3000/authors \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "given_name": "J.K.",
      "surname": "Rowling"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/authors/2 \
  --header "Content-Type: application/json" \
  --data '{
    "author": {
      "given_name": "J.K.",
      "surname": "Rowling"
    }
  }'

#delete
curl --include --request DELETE http://localhost:3000/authors/2 \
  --header "Content-Type: application/json"
