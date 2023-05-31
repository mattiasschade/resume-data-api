Rails.application.routes.draw do
  get "/students" => "students#index"

  get "/educations" => "educations#index"

  get "/experiences" => "experiences#index"
  
end
