collection @categories, root: "categories", object_root: false
attributes :id, :name
node :budget_lines do |category|
  category.budget_lines.map do |budget_line|
    partial 'api/v1/budget_lines/show', object: budget_line, root: false
  end
end