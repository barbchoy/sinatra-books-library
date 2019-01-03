class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end

  get '/' do
    erb :index
  end

  get '/login' do
    if !logged_in?
      erb :index
    else
      redirect to '/books'
    end
  end

  post '/login' do
    @author = Author.find_by(:username => params[:username])
    if @author && @author.authenticate(params[:password])
      session[:user_id] = @author.id
      redirect to "/books"
    else
      redirect to "/"
    end
  end

  get '/signup' do
    if !logged_in?
      erb :signup
    else
      redirect to '/books'
    end
  end

  get '/logout' do
   if logged_in?
     session.destroy
     redirect to "/login"
   else
     redirect to '/'
   end
  end

  post '/signup' do
    if params[:username]=="" || params[:password]=="" || params[:email]=="" || params[:name]==""
      redirect to "/signup"
    else
      @author = Author.create(params)
      @author.save
      session[:user_id] = @author.id
      redirect to "/books"
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
