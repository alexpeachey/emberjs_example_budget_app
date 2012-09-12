class CreateBudgetLines < ActiveRecord::Migration
  def change
    create_table :budget_lines do |t|
      t.string :name
      t.references :category
      t.integer :amount

      t.timestamps
    end
    add_index :budget_lines, :category_id
  end
end
