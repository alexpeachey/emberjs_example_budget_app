class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def current_user
    @decorated_current_user ||= UserDecorator.decorate(super || User.new)
  end
end
