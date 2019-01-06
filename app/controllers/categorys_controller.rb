class CategorysController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end

  get '/categories/:slug' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find(session[:user_id])
      @current_author = Author.find(session[:user_id])
      @category = Category.find_by_slug(params[:slug])
      erb :'categories/show'
    end
  end
end
