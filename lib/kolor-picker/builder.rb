require 'action_view'

module ActionView
  module Helpers
    class FormBuilder
      def colorpicker(method, options = {}, html_options = {})
        text_field(method, @template.colorpicker_options(options, html_options))
      end
    end
  end
end
