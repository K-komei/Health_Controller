Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "home#Login"

  get "/home/Main" => "home#Main"

  post "/home/Main" => "home#Main"

  get "/edit_data/Add_Cal" => "edit_data#Add_Cal"
  
  get "/edit_data/Add_Cal" => "calories#add_rec"


  post "/edit_data/Add_Cal" => "calories#create"

  get "/create" => "user#Create"

  get "/user/Create" => "user#Create"
  
  post "/user/login" => "user#login"

  post "/user/Adduser" => "user#Adduser"

  post "/edit_data/Edit_Cal" => "calories#edit_rec"

  post "/edit_data/Delete_Cal" => "calories#delete_rec"
 

end
