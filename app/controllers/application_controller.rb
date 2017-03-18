# frozen_string_literal: true

# Core to Controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def redirect_to_url
    redirect_to Link.search_url(params[:key])
  end
end
