Rails.application.routes.draw do
  mount CmAdmin::Engine => "/cm_admin"
  resources :users
end
