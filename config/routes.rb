Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
  get "bio",         to: "pages#bio"
  get "live",        to: "pages#live"
  get "discography", to: "pages#discography"
  get "videos",      to: "pages#videos"
  get "lessons",     to: "pages#lessons"
  get "store",       to: "pages#store"
  get  "contact",    to: "pages#contact"
  post "contact",    to: "pages#contact_submit"
end
