module Admin

  class StoresController < AdminController

    before_action :find_store,
      only: [:show, :edit, :update, :destroy, :show_books, :add_book]

    def index
      @stores = Store.order(:codename)
    end

    def new
      @store = Store.new
    end

    def create
      @store = Store.new(store_params)

      if @store.save
        flash[:notice] = t('.success')
        redirect_to admin_store_path(@store)
      else
        flash[:alert] = t('.error')
        render :new
      end
    end

    def show ; end

    def edit ; end

    def update
      if @store.update(store_params)
        flash[:notice] = t('.success')
        redirect_to action: :show
      else
        flash[:alert] = t('.error')
        render :edit
      end
    end

    def destroy
      if @store.destroy
        flash[:notice] = t('.success')
        redirect_to action: :index
      else
        flash.now[:alert] = t('.error')
        render :edit
      end
    end

    def show_books
      @stored_books = @store.stored_books

      @books = Book.order(:title)
    end

    def add_book
      stored_book = StoredBook.new(book_params)

      if stored_book.valid?
        add_book_to_store(stored_book)

        flash[:notice] = t('.success')
      else
        flash[:alert] = t('.error')
      end

      redirect_to action: :show_books
    end

    private

    def store_params
      params.require(:store)
        .permit(
          :codename,
          :phone,
          :address,
        )
    end

    def book_params
      params.permit(
        :book_id,
        :book_count
      )
    end

    def active_main_navbar
      :stores
    end

    def find_store
      @store = Store.find(params[:id])
    end

    def add_book_to_store(stored_book)
      if @store.books.include?(stored_book.book)
        stored_books = @store.stored_books.find_by(book_id: stored_book.book_id)
        stored_books.update(book_count: (stored_books.book_count + stored_book.book_count))
      else
        @store.stored_books << stored_book
      end
    end

  end

end
