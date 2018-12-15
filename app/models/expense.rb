class Expense < ApplicationRecord
  belongs_to :category
  enum type: [:purchase, :withdrawal, :transfer,:payment]
end


