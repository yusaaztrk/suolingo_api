Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  resources :avatars

  namespace :api do
    namespace :v1 do
      # Simülasyon
      post 'speak', to: 'interactions#speak'
      get 'history', to: 'interactions#history'
      post 'check_pronunciation', to: 'interactions#check_pronunciation'
      
      # Yeni Profesyonel Özellikler
      get 'profile', to: 'interactions#user_profile'
      get 'leaderboard', to: 'interactions#leaderboard'
      get 'daily_quests', to: 'interactions#daily_quests'
      post 'save_word', to: 'interactions#save_word'
    end
  end
end