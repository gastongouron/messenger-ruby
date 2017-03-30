require 'messenger/components/element'

module Messenger
  module Elements
    class MenuItem
    
      def initialize(content_type:, title: nil, payload: nil, url: nil, web_view_height_ratio: nil)
        @content_type    = content_type
        @title    = title if text?(content_type)
        @payload = payload if payload?(content_type)
        @url = url if url?(content_type)
        @web_view_height_ratio = web_view_height_ratio
        @messenger_extensions = true
      end

      def build
        {
          content_type: @content_type,
          title: @title,
          payload: @payload,
          url: @url,
          web_view_height_ratio: @web_view_height_ratio,
          messenger_extensions: @messenger_extensions
        }.delete_if { |k, v| v.empty? }

      end

      private

      def text?(value)
        value == 'text' || 'web_url' || 'postback'
      end

      def url?(value)
        value == 'web_url'
      end

      def payload?(value)
        value == 'postback'
      end

      def web_view_height?(vlaue)
        value == "full" || "compact" || "tall"
      end
    end
  end
end
