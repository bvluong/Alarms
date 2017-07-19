Rails.application.routes.draw do

  resources :alarms, only:[:index, :new, :create] do
    post "upvote"
    post "downvote"
  end
  root to: "alarms#index"
end
