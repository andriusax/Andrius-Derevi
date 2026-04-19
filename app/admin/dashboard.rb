ActiveAdmin.register_page "Dashboard" do
  menu false

  controller do
    def index
      redirect_to admin_shows_path
    end
  end
end
