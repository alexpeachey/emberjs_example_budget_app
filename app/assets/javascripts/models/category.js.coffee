App.Category = DS.Model.extend(
  id: DS.attr('number')
  name: DS.attr('string')
  budgetLines: DS.hasMany('App.BudgetLine', { embedded: true })
  total: (->
    amounts = @get('budgetLines').getEach('amount')
    amounts = [0] unless amounts.length
    (amounts.reduce (t, s) -> t + s) or 0
  ).property('budgetLines.@each.amount','App.BudgetLine')
)