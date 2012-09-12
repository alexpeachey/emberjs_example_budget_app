class App.BudgetLineListener
  constructor: ->
    PrivatePub.subscribe "/budget_line/created", @handleMessage
    PrivatePub.subscribe "/budget_line/updated", @handleMessage

  handleMessage: (data, channel) ->
    App.Store.findQuery(App.Category, {id: data.category_id})