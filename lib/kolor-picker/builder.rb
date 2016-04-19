require 'action_view'

module ActionView
  module Helpers
    class FormBuilder
      def colorpicker(method, options = {}, html_options = {})
        @template.colorpicker(@object_name, method, options, html_options)
      end
    end
  end
end
