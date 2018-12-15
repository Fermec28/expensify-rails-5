class ChangeColumnNameTypeExpnsesByTypeExpense < ActiveRecord::Migration[5.0]
  def change
    rename_column :expenses, :type, :type_of_expense
  end
end
