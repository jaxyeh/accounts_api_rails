Rails.application.routes.draw do

  root to: "site#index"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  namespace :api, path: '/api/' do

    get 'accounts/domains', to: 'accounts#showall'

    with_options only: [ :index, :show, :create, :update, :destroy ] do |opts|
      opts.resources :domains
      opts.resources :accounts
    end

  end

  match '*path', :to => 'application#raise_not_found!', via: :all

end
