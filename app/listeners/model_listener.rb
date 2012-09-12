class ModelListener < ActiveRecord::Observer
  observe :category, :budget_line

  def after_save(model)
    if model.id_changed?
      channel = "/#{model.class.name.underscore}/created"
    else
      channel = "/#{model.class.name.underscore}/updated"
    end
    message = Rabl.render(model, "api/v1/#{model.class.name.underscore.pluralize}/show", view_path: 'app/views', format: :hash)
    PrivatePub.publish_to channel, message
  end
end