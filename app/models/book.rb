class Book < ActiveRecord::Base
  belongs_to :author
  has_many :borrowers, through: :loans
  has_many :loans, dependent: :destroy

  validates :author, uniqueness: true
  #  ^ validates that we have an author, then makes sure it is unique
end
