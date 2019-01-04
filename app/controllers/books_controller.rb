class BooksController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret_password"
  end

  get '/books/:slug/edit' do
    @book = Book.find_by_slug(params[:slug])
    @author = Author.find(session[:user_id])
    if @author.name == @book.author.name
      erb :'books/edit'
    else
      redirect to '/books'
    end
  end

  get '/books/:slug/delete' do
    @book = Book.find_by_slug(params[:slug])
    @author = Author.find(session[:user_id])
    if @author.name == @book.author.name
      @book.destroy
      redirect to '/books'
    else
      redirect to '/books'
    end
  end


  get '/books' do
    if !logged_in?
      redirect to '/login'
    else
      @author = Author.find(session[:user_id])
      erb :'/books/index'
    end
  end

  get '/books/:slug' do
    @book = Book.find_by_slug(params[:slug])
    erb :'/books/show'
  end

  patch '/books/:slug' do
    @book = Book.find_by_slug(params[:slug])
    if logged_in? && params[:book_title]!="" && params[:book_summary] !="" && params[:book_year_published]!=""
      @book.update(:title => params[:book_title], :book_summary => params[:book_summary], :year_published => params[:book_year_published])
      @book.category_id = params[:category_id]
      @book.save
      redirect to '/books/:slug'
    else
      erb 'Cannot Edit Book'
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
