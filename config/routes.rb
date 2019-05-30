Rails.application.routes.draw do
  # Routes for the Base ingredient resource:

  # CREATE
  get("/base_ingredients/new", { :controller => "base_ingredients", :action => "new_form" })
  post("/create_base_ingredient", { :controller => "base_ingredients", :action => "create_row" })

  # READ
  get("/base_ingredients", { :controller => "base_ingredients", :action => "index" })
  get("/base_ingredients/:id_to_display", { :controller => "base_ingredients", :action => "show" })

  # UPDATE
  get("/base_ingredients/:prefill_with_id/edit", { :controller => "base_ingredients", :action => "edit_form" })
  post("/update_base_ingredient/:id_to_modify", { :controller => "base_ingredients", :action => "update_row" })

  # DELETE
  get("/delete_base_ingredient/:id_to_remove", { :controller => "base_ingredients", :action => "destroy_row" })

  #------------------------------

  devise_for :users_informations
  # Routes for the Users information resource:

  # READ
  get("/users_informations", { :controller => "users_informations", :action => "index" })
  get("/users_informations/:id_to_display", { :controller => "users_informations", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
