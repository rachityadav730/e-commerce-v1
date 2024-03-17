DeviseController.class_eval do
    def set_flash_message(_key, _kind, _options = {})
      # Do nothing, effectively disabling setting flash messages
    end
end