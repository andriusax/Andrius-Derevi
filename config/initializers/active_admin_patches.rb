ActiveSupport.on_load(:active_admin) do
  ActiveAdmin::ResourceController.prepend(Module.new do
    def restrict_format_access!
      return if request.format.symbol == :all || request.format.symbol == :html || request.format.nil?
      super
    end
  end)
end
