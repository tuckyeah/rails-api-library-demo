#update
curl --include --request PATCH http://localhost:3000/loans/2 \
  --header "Content-Type: application/json" \
  --data '{
    "loans": {
      "end_date": "2016-10-02",
      "book_id": 2,
      "borrower_id": 2
    }
  }'
