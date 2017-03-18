# Core to Controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def redirect_to_url
    redirect_to Link.find_by(key: params[:key]).url
  end
end
