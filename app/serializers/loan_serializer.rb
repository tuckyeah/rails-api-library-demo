class LoanSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :book, :borrower
end
