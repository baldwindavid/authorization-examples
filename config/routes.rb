Autho::Application.routes.draw do
  resources :projects
  resources :companies
  get "secret", to: "welcome#secret"
  root "welcome#index"
end
