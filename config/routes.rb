Rails.application.routes.draw do
  scope module: 'user' do
    get '/',                  to: 'characters#index'
    get '/update/:name',      to: 'characters#update'
    get '/leaderboard',       to: 'votes#leaderboard'
    get '/about',             to: 'static#about'
  end
end
