Rails.application.routes.draw do
  devise_for :users
  root to: "beasts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  resources :bookings, only: [:index]
  resources :beasts, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:edit, :update]
  patch "bookings/:id/pay", to: "bookings#pay", as: "booking_pay"
  patch "bookings/:id/cancel", to: "bookings#cancel", as: "booking_cancel"


  get "/dashboard", to: "users#dashboard"

  namespace :owner do
    resources :beasts, only: [:index]
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
        patch :cancel
      end
    end
  end
end
