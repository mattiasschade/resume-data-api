Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


  # get "/students" => "students#index"
  # get "/students/:id" => "students#show"
  # post "/students" => "students#create"

  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show" 
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#update"
  delete "/skills/:id" => "skills#destroy"


  get "/capstones" => "capstones#index"
  get "capstones/:id" => "capstones#show"
  post "/capstones" => "capstones#create"
  patch "/capstones/:id" => "capstones#update"
  delete "/capstones/:id" => "capstones#destroy"


  get "/students" => "students#index"
  get "/students/:id" => "students#show"

  get '/generate-pdf', to: 'pdfs#generate', as: 'generate_pdf'

  resources :students
  resources :educations
  resources :experiences
  
  
end
