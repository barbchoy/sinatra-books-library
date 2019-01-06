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
      @category = Category.find_by_slug(params[:slug])
      @books = category.books
      erb :'categories/show'
    end
  end

end
