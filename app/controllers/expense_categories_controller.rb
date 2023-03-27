class ExpenseCategoriesController < ApplicationController
  def index
    @user_categories = UserCategory.where("user_id=?",current_user.id)
  end
  def new
    @user_category = UserCategory.find_by_id(params[:category_id])
    @expense_categories = @user_category.fetch_expense_categories  
    @expense_category = ExpenseCategory.new
  end
end
