class AuthorsController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end

  get '/authors/edit' do
    if !logged_in?
      redirect to '/login'
    else
      @user = Author.find(session[:user_id])
      erb :'authors/edit'
    end
  end

  get '/authors/index' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find(session[:user_id])
      erb :'authors/index'
    end
  end

  get '/authors/:slug' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find_by_slug(params[:slug])
      @current_author = Author.find(session[:user_id])
      @books = @author.books
      erb :'authors/show'
    end
  end



end
