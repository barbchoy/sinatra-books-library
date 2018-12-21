class BooksController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end


  get '/books' do
    erb :'/books/index'
  end
end
