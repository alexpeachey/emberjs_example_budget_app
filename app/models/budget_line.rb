class BudgetLine < ActiveRecord::Base
  belongs_to :category
  attr_accessible :amount, :name, :category_id
end
