Rails.application.routes.draw do
  resources :books
  # Routes for the Movie resource:

  # CREATE
  post("/movies", { :controller => "movies", :action => "create" })
          
  # READ
  get("/movies", { :controller => "movies", :action => "index" })
  
  get("/movies/:id", { :controller => "movies", :action => "show" })
  
  # UPDATE
  
  patch("/movies/:id", { :controller => "movies", :action => "update" })
  
  # DELETE
  delete("/movies/:id", { :controller => "movies", :action => "destroy" })

  #------------------------------

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
