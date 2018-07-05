Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  #index
    get '/horses' => 'horses#index'
  #show
    get '/horses/:id' => 'horses#show'
  #create
    post '/horses' => 'horses#create'
  #update
    patch '/horses/:id' => 'horses#update'
  #destroy
    delete '/horses/:id' => 'horses#destroy'
  end
end
