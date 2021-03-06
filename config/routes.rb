Rails.application.routes.draw do
  devise_for :admin, path: 'admin', controllers: { sessions: 'users/sessions' }, skip: 'registration'

  resource :admin, controller: 'admin', only: [:show]

  namespace 'admin' do
		resources :news
  end

  resource :static, only: [:show, :create]

  root 'statics#show'
end
