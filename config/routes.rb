Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }

  scope :api, defaults: { format: :json } do
    resources :home, only: [:index]
  end
end
