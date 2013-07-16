class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :login_user

  protected

  def login_user
  	@user = User.first
  end

end
