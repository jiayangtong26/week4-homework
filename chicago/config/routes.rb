Rails.application.routes.draw do

  root 'places#index'

  get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  post '/places' => 'places#create'
  get '/places/:id' => 'places#show', :as => 'place'
  delete '/places/:id' => 'places#delete'
  get '/places/:id/edit' => 'places#edit', :as => 'places_edit'
  patch '/places/:id' => 'places#update'

  get '/places/:place_id/reviews' => 'reviews#index', :as => 'reviews'
  get '/places/:place_id/reviews/new' => 'reviews#new', :as => 'reviews_new'
  post '/places/:place_id/reviews'  => 'reviews#create'
  delete '/places/:place_id/reviews/:id' => 'reviews#delete'
  get '/places/:place_id/reviews/:id' => 'reviews#show', :as => 'review'
  get '/places/:place_id/reviews/:id/edit' => 'reviews#edit', :as => 'reviews_edit'
  patch '/places/:place_id/reviews/:id' => 'reviews#update'

end
