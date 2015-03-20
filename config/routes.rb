Rails.application.routes.draw do
  root :to => 'entries#index'
  resources :entries, :only => [:index, :show, :new, :create, :edit, :update, :destroy]do
    resources :comments, :only => [:new, :create, :edit, :update, :destroy]
  end
end
