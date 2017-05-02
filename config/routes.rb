Rails.application.routes.draw do
  namespace :admin do
    get 'lich_giangs/index'
  end

  namespace :admin do
    get 'lich_giangs/show'
  end

  namespace :admin do
    get 'lich_giangs/new'
  end

  namespace :admin do
    get 'lich_giangs/edit'
  end

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
    resources :lops
    resources :giao_viens
    resources :chuyen_mons
    resources :phan_mons
    resources :sinh_viens
    resources :quyens
    resources :lich_giangs
  end

  namespace :daotao do
    root "static_pages#index"
  end
  root "static_pages#index"
end
