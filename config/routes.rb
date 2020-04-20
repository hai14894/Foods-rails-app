Rails.application.routes.draw do
 get "/foods", to: "foods#index"
 get "/foods/:id", to: "foods#show"

end
