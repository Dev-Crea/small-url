Rails.application.routes.draw do
  root to: 'links#index'

  resource :me do
    resources :links
  end
end
