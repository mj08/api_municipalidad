Rails.application.routes.draw do
  
 
  
    scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }
    resource :user, only: [:show, :update]
  end

  namespace :api do
  	namespace :v1 do
  		resources :events

  	end
  end
end
