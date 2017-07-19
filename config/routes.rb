Rails.application.routes.draw do

  resources :alarms, only:[:index, :new, :create] do
    post "upvote"
  end
  root to: "alarms#index"
end
