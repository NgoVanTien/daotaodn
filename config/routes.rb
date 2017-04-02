Rails.application.routes.draw do
  devise_for :tai_khoans
  # namespace :admin do
  #   get 'loai_mon_hocs/index'
  # end

  namespace :admin do
    root "static_pages#index"
    resources :loai_mon_hocs
  end

  namespace :daotao do
    root "static_pages#index"
  end
  root "static_pages#index"
end
