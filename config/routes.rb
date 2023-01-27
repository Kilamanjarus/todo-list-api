Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks" => "task#index"
  get "/tasks/:id" => "task#show"
  post "/tasks/:id" => "task#create"
  patch "/tasks/:id" => "task#update"
  delete "/tasks/:id" => "task#destroy"
end
