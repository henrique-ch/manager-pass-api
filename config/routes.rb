Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :user, only: [:create] do
    member do
      get '/:id', action: :show, format: :json
    end 
  end

  resource :category, only: [:create, :show, :update]

  get '/passwords', to: 'passwords#index', format: :json
end
