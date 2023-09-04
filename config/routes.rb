Rails.application.routes.draw do
  root "articles#index"
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  post "/articles", to: "articles#create"
  delete "/articles/:id", to: "articles#destroy"
  put patch "/articles/:id", to: "articles#update"
  resources :authors do
    resources :books
  end
  
  
end
