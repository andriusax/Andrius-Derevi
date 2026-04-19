ActiveSupport.on_load(:active_admin) do
  ActiveAdmin::ResourceController.prepend(Module.new do
    def restrict_format_access!
      return if request.format.symbol == :all
      super
    end
  end)
end
