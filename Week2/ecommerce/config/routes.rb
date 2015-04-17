Rails.application.routes.draw do
  root :to => "laptops#index"
  resources :laptops
end
