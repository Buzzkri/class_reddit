Rails.application.routes.draw do
root "subs#index" #this is for the main landing page that puts you into "root#rootaction"

#resource routing
resources :subs
#resources :controller_name

#manual routing
# get "/subs", to: "subs#index"
# get "/subs/:id", to: "subs#show"
# delete "/subs/:id", to "subs#destroy"



end
