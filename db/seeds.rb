# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.find_or_create_by(name:'Services')
Category.find_or_create_by(name:'Restaurants')
Category.find_or_create_by(name:'Car')
Category.find_or_create_by(name:'Travel')
Category.find_or_create_by(name:'Fun')

type_of_expense = ["purchase", "withdrawal", "transfer","payment"]

def rand_in_range(from, to)
    rand * (to - from) + from
end

def rand_time(from, to=Time.now)
    Time.at(rand_in_range(3.years.ago.to_f, Time.now.to_f)).to_date
end


def rand_category
    Category.order("Random()").pluck(:id).first
end

def rand_amount
    rand * (120000) + 8000
end

if Category.all.count < 1000
    1000.times do 
        category = rand_category
        Expense.create(type_of_expense: type_of_expense.sample, date: rand_time(3.years.ago), concept: Faker::Commerce.product_name, amount: rand_amount, category_id: category)
    end
end