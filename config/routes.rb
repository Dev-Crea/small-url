Rails.application.routes.draw do
  root to: 'links#index'

  get ':key', to: 'application#redirect_to_url'

  resource :me do
    resources :links
  end
end
