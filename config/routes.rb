RailsAngularStarter::Application.routes.draw do

  namespace :api do
    resources :attachments
  end

  resources :attachments

  root to: 'attachments#new'

end
