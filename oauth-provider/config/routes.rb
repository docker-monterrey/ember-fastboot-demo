Rails.application.routes.draw do
  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html

  devise_for :users,
             path: '/',
             path_names: { sign_in: 'sign-in', sign_up: 'sign-up', sign_out: 'sign-out' }

  use_doorkeeper do
    controllers token_info: 'oauth/token_info'
  end

  root to: 'home#show'
end
