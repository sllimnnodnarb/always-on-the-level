Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/contact'
  get 'welcome/about'
  get 'welcome/septic-install'
  get 'welcome/aerobic-maintenance'
  get 'welcome/lift-station'
end
