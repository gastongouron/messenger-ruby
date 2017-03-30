require 'messenger/components/element'

module Messenger
  module Elements
    class MenuItems
    
     attr_accessor :items
      def initialize()
        @items = []
      end

      def add item
        if item.blank? == false
          @items.push(item)
        end       
      end
      
    end
  end
end
