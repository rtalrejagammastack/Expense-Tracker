class AddReferenceToExpenseSubCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :expense_sub_categories, :user, index: true
    add_foreign_key :expense_sub_categories, :users
  end
end
