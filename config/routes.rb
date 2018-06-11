Rails.application.routes.draw do
  get 'contacts/new'
  post 'contacts/new' => 'contacts#create'
  get 'welcome/contact'
  get 'welcome/about'
  get 'welcome/services'
  get 'welcome/install'
  get 'welcome/maintenance'
  get 'welcome/lift'
  #post 'welcome/contact' => 'contacts#create', as: :contact
  root 'welcome#index'
end
