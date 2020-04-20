Rails.application.routes.draw do
 get "/foods", to: "foods#index", as: "index"
 get "foods/new", to: "foods#new", as: "new"
 get "foods/:id/edit", to: "foods#edit", as: "edit"
 get "/foods/:id", to: "foods#show", as: "show"
 post "/foods", to: "foods#create"
 put "/foods/:id", to: "foods#update"
 delete "foods/:id", to: "foods#destroy"


end
