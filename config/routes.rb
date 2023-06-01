Rails.application.routes.draw do

  # get "/students" => "students#index"
  # get "/students/:id" => "students#show"

  # post "/students" => "students#create"

  resources :students
  resources :educations
  resources :experiences
  
  
end
