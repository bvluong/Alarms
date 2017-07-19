Rails.application.routes.draw do

  resources :alarms, only:[:index, :new, :create]
  root to: "alarms#index"
end
