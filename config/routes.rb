Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/puppies' => 'puppies#index'
  get '/puppies/new' => 'puppies#new'
  post '/puppies' => 'puppies#create'
  get '/puppies/:id' => 'puppies#show'
  get '/puppies/:id/edit' => 'puppies#edit'
  patch '/puppies/:id' => 'puppies#update'
  delete '/puppies/:id' => 'puppies#destroy'
end
