Rails.application.routes.draw do
root "subs#index" #this is for the main landing page that puts you into "root#rootaction"
#resources :controller_name
#resource routing
resources :subs do
  resources :topics
end

#manual routing
# get "/subs", to: "subs#index"
# get "/subs/:id", to: "subs#show"
# delete "/subs/:id", to "subs#destroy"



end
