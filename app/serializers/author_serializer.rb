class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :books
end
