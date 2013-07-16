DiscoDolphin::Application.routes.draw do

  # The priority is based upon order of creation:
  # first created -> highest priority.

  resources :playlists do 
    resources :items, :controller => :playlist_items, :except => [:index, :show]
  end

  resource :current_playlist, :only => [:show, :create, :destroy]


  root :to => 'playlists#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
