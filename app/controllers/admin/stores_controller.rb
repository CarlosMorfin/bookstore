module Admin

  class StoresController < AdminController

    before_action :find_store,
      only: [:show, :edit, :update, :destroy]

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

    private

    def store_params
      params.require(:store)
        .permit(
          :codename,
          :phone,
          :address,
        )
    end

    def active_main_navbar
      :stores
    end

    def find_store
      @store = Store.find(params[:id])
    end
  end

end
