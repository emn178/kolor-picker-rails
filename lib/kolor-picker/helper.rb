module KolorPicker
  module Helper
    def colorpicker_options(options, html_options)
      html_options.deep_merge({
        :data => {
          :"kolor-picker" => options.to_json
        }
      })
    end

    def colorpicker_tag(name, value = nil, options = {}, html_options = {})
      hidden_field_tag(name, value, colorpicker_options(options, html_options))
    end

    def colorpicker(object_name, method, options = {}, html_options = {})
      ActionView::Helpers::Tags::HiddenField.new(object_name, method, self, colorpicker_options(options, html_options)).render
    end
  end
end
