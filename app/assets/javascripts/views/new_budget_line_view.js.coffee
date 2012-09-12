App.NewBudgetLineView = Ember.View.extend(
  templateName: 'new_budget_line'
  name: ''
  amount: 0
  createMode: false
  createBudgetLine: (evt) ->
    @get('controller').createBudgetLine(@category,@name,@amount)
    @set('name','')
    @set('amount',0)
    @set('createMode',false)
  newBudgetLine: (evt) ->
    @set('createMode',true)
  cancelBudgetLine: (evt) ->
    @set('name','')
    @set('amount',0)
    @set('createMode',false)
)