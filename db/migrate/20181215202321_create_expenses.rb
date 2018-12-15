class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :type
      t.date :date
      t.string :concept
      t.float :amount
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
