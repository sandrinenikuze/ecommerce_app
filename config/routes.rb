Rails.application.routes.draw do
  
  get "/products", to: 'products#index'
  get "/products/new", to: 'products#new'
  get "/products/:id", to: 'products#show'
  post "/products", to: 'products#create'
  get "/products/:id/edit", to:'products#edit'
  patch "/products/:id", to: 'products#update'
  delete "/products/:id", to: 'products#destroy'

  get "/suppliers", to: 'suppliers#index'
  get "/suppliers/new", to: 'suppliers#new'
  get "/suppliers/:id", to: 'suppliers#show'
  post "/suppliers", to: 'suppliers#create'
  get "/suppliers/:id/edit", to:'suppliers#edit'
  patch "/suppliers/:id", to: 'suppliers#update'
  delete "/suppliers/:id", to: 'suppliers#destroy'

  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  get "/logout", to: 'sessions#destroy'

end


