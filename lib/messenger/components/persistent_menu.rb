module Messenger
    module Component
      class PersistentMenu
          def initialize(menu_items: nil)
            @thread_state = thread_state
            @menu_items = menu_items if menu_items.kind_of?(Array)
            @thread_state = thread_state
            @setting_type = setting_type
          end

          def build
            {
              setting_type: @setting_type,
              thread_state: @thread_state,
              call_to_actions: @menu_items.items
            }
          end
      end
  end   
end
