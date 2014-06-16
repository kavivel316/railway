Rails.application.routes.draw do
  get "login" => "users#new"
root :to => "users#new"
resources :users
end
 
