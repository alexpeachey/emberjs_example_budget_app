App.BudgetLine = DS.Model.extend(
  id: DS.attr('number')
  name: DS.attr('string')
  amount: DS.attr('number')
  category: DS.belongsTo('App.Category')
)