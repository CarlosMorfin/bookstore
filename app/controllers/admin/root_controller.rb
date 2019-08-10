module Admin

  class RootController < AdminController

    def show
      redirect_to admin_stores_path
    end

  end

end
