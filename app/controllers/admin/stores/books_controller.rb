class Admin::Stores::BooksController < AdminController

  before_action :find_store,
    only: [:index, :add_books]

  before_action :get_books,
    only: [:index]

  def index
    @store_books = @store.store_books
  end

  def add_books
  end

  private

  def find_store
    @store = Store.find(params[:store_id])
  end

  def get_books
    @books = @store.books
  end

end
