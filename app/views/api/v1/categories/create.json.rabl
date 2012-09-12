object @category
attributes :id, :name
child(:budget_lines) { attributes :id, :name, :amount, :category_id }