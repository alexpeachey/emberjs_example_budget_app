App.Store = DS.Store.create(
  revision: 4
  adapter: DS.RESTAdapter.create(
    namespace: 'api/v1'
    plurals:
      category: 'categories'
  )
)

