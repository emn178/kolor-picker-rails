//= require kolor-picker/jqColorPicker.min
//= require kolor-picker/color-sampler
//= require kolor-picker/kolor-picker

(function ($) {
  var colorPicker  = $();

  $(document).on('ready page:load', function () {
    $('[data-widget-kolor-picker]').each(function () {
      var element = $(this);
      var options = element.data('widget-kolor-picker') || {};
      options.onSelect = function (color) {
        element.val(color);
      };
      element.addClass('kolor-picker-input')
        .attr('autocomplete', 'off')
        .kolorPicker(options)
        .wrap('<span class="kolor-picker-wrapper" />');
    });
  });

  $(document).on('page:before-unload', function() {
    if (!colorPicker.length) {
      colorPicker = $('.cp-color-picker');
    }
  });

  $(document).on('page:load', function() {
    if (colorPicker.length) {
      $('body').append(colorPicker);
    }
  });
})(jQuery);
