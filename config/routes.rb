ClioHiringUi::Application.routes.draw do
  root "pages#instructions"
  
  devise_for :users

  namespace :admin do
    root "base#index"
    resources :users    
  end

  resources :simulations, except: [:edit]

end
