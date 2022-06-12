Rails.application.routes.draw do
  root to: 'products#landingpage'
  resources :products do
    resources :reviews
  end
end
