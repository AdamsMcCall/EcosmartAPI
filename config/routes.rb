Rails.application.routes.draw do
  resources :children
  resources :parents
  resources :transactions
  resources :transfers
  resources :links
end
