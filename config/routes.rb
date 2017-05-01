Rails.application.routes.draw do
   default_url_options :host => "example.com"
  devise_for :users
  root to: "articles#index"

  resources :articles do
    resources :comments
  end
end
