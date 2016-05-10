module KolorPicker
  module Helper
    def colorpicker_options(options, html_options)
      html_options.deep_merge({
        :data => {
          :"widget-kolor-picker" => options.to_json
        }
      })
    end

    def colorpicker_tag(name, value = nil, options = {}, html_options = {})
      text_field_tag(name, value, colorpicker_options(options, html_options))
    end
  end
end
