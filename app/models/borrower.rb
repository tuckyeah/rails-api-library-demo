class Borrower < ActiveRecord::Base
  has_many :books, through: :loans
  has_many :loans, dependent: :destroy
end
