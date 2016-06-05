Rails.application.routes.draw do
  root to: 'application#welcome'
  use_doorkeeper

  devise_for :users, skip: :registrations, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout' }
  devise_scope :user do
    resource :registration,
             only: [:new, :create, :edit, :update],
             path: 'auth',
             path_names: { new: 'register' },
             controller: 'devise/registrations'
  end
end
