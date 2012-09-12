App.CategoryView = Ember.View.extend(
  templateName: 'category'
  editMode: false
  editCategory: (evt) ->
    @set('editMode',true)
  saveCategory: (evt) ->
    @get('controller').saveCategory()
    @set('editMode',false)
)