Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show" 
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"


  get "/capstones" => "capstones#index"


end
