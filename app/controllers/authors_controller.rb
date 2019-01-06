class AuthorsController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end

  get '/authors/index' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find_by_slug(params[:slug])
      binding.pry
      erb :'authors/index'
    end
  end

  get '/authors/:slug' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find_by_slug(params[:slug])
      binding.pry
      @books = @author.books
      erb :'authors/show'
    end
  end



end
