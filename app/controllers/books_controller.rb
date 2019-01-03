class BooksController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end


  get '/books' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find(session[:user_id])
      erb :'/books/index'
    end
  end

  helpers do

    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= Author.find_by(:id => session[:user_id]) if session[:user_id]
    end
  end
end
