Rails.application.routes.draw do
  devise_for :tai_khoans, controllers: {sessions: "tai_khoans/sessions", registrations: "tai_khoans/registrations"}

  namespace :admin do
    root "static_pages#index"
    resources :loai_mon_hocs
    resources :khoas
    resources :mon_hocs
    resources :khoa_hocs
    resources :bac_dao_taos
    resources :chuong_trinh_dao_taos do
      resources :chi_tiet_dao_taos
    end
  end

  namespace :daotao do
    root "static_pages#index"
  end
  root "static_pages#index"
end
