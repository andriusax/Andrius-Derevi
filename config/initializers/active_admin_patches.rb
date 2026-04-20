ActiveSupport.on_load(:active_admin) do
  ActiveAdmin::ResourceController.prepend(Module.new do
    def restrict_format_access!
      # No authorization adapter in use — allow all formats
    end
  end)
end
