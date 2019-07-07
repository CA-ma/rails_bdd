Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles do
    resources :comments
  end
end
