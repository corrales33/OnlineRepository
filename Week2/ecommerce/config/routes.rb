Rails.application.routes.draw do
  root :to => "laptops#welcome"
  resources :laptops
  resources :backpacks
end
