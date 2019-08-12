module Admin

  class BooksController < AdminController

    before_action :find_book,
      only: [:show, :edit, :update, :destroy]

    def index
      @books = Book.order(:title)
    end

    def new
      @book = Book.new
    end

    def create
      @book = Book.new(book_params)

      if @book.save
        flash[:notice] = t('.success')
        redirect_to admin_book_path(@book)
      else
        flash[:alert] = t('.error')
        render :new
      end
    end

    def show ; end

    def edit ; end

    def update
      if @book.update(book_params)
        flash[:notice] = t('.success')
        redirect_to action: :show
      else
        flash[:alert] = t('.error')
        render :edit
      end
    end

    def destroy
      if @book.destroy
        flash[:notice] = t('.success')
        redirect_to action: :index
      else
        flash.now[:alert] = t('.error')
        render :edit
      end
    end

    private

    def book_params
      params.require(:book)
        .permit(
          :title,
          :author,
          :year,
        )
    end

    def active_main_navbar
      :books
    end

    def find_book
      @book = Book.find(params[:id])
    end

  end

end
