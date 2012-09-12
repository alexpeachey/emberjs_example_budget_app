class App.CategoryListener
  constructor: ->
    PrivatePub.subscribe "/category/created", @handleMessage
    PrivatePub.subscribe "/category/updated", @handleMessage

  handleMessage: (data, channel) ->
    App.Store.findQuery(App.Category, {id: data.id})