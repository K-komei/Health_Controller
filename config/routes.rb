Rails.application.routes.draw do
  get 'edit_data/Add_Cal'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#Login"

  get "/home/Main" => "home#Main"
  post "/home/Main" => "home#Main"

  get "/edit_data/Add_Cal" => "edit_data#Add_Cal"
  
  post "/edit_data/Add_Cal" => "calories#create"
  

end
