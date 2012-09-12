App.BudgetLineView = Ember.View.extend(
  templateName: 'budget_line'
  editMode: false
  editBudgetLine: (evt) ->
    @set('editMode',true)
  saveBudgetLine: (evt) ->
    @get('controller').saveBudgetLine()
    @set('editMode',false)
)
