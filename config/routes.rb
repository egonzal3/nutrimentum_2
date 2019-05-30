Rails.application.routes.draw do
  devise_for :users_informations
  # Routes for the Users information resource:

  # READ
  get("/users_informations", { :controller => "users_informations", :action => "index" })
  get("/users_informations/:id_to_display", { :controller => "users_informations", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
