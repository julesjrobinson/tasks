Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # get "/tasks" => "tasks#index"
  # post "/tasks" => "tasks#create"
  # get "/tasks/:id" => "tasks#show"

  # delete "/tasks/:id" => "tasks#destroy"
  # get "/tasks/new" => "tasks#new"

  root "tasks#index"

  resources :tasks
end
