App.NewCategoryView = Ember.View.extend(
  templateName: 'new_category'
  createMode: false
  name: ''
  createCategory: (evt) ->
    if @name != ''
      @get('controller').createCategory(@name)
      @set('name','')
      @set('createMode',false)
  newCategory: (evt) ->
    @set('createMode',true)
  cancelCategory: (evt) ->
    @set('name','')
    @set('createMode',false)
)