Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'welcome/contact'
  get 'welcome/about'
  get 'welcome/services'
  get 'welcome/install'
  get 'welcome/maintenance'
  get 'welcome/lift'
  post 'welcome/contact' => 'contacts#create', as: :contact
end
