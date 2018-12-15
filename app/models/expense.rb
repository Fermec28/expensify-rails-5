class Expense < ApplicationRecord
  belongs_to :category
  enum type_of_expense: [:purchase, :withdrawal, :transfer,:payment]
end


