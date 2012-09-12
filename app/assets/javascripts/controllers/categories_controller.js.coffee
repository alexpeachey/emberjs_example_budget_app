App.CategoriesController = Ember.ArrayController.extend(
  income: 5000
  total: (->
    amounts = @.getEach('total')
    amounts = [0] unless amounts.length
    (amounts.reduce (t, s) -> t + s) or 0
  ).property('this.@each.total')
  overBudget: (->
    @get('total') > @get('income')
  ).property('this.total','this.income')
  createCategory: (name) ->
    App.Store.createRecord(App.Category, { name: name })
    App.Store.commit()
  saveCategory: ->
    App.Store.commit()
  createBudgetLine: (category,name,amount) ->
    category.get('budgetLines').createRecord({name: name, amount: amount})
    App.Store.commit()
  saveBudgetLine: ->
    App.Store.commit()
)
