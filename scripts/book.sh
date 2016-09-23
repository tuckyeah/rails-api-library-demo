# index
curl --include --request GET http://localhost:3000/books

# show
curl --include --request GET http://localhost:3000/books/2

# create
curl --include --request POST http://localhost:3000/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Example Title",
      "author": "Example Author"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/books/2 \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Tuck Everlasting",
      "author": "Tuck Yeah"
    }
  }'

# delete
curl --include --request DELETE http://localhost:3000/books/2
