Rails.application.routes.draw do
  namespace :admin do
    root "static_pages#index"
  end
  root "static_pages#index"
  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
end
