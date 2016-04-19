//= require kolor-picker/jqColorPicker.min
//= require kolor-picker/color-sampler
//= require kolor-picker/kolor-picker

(function ($) {
  var colorPicker  = $();

  $(document).on('ready page:load', function () {
    $('[data-kolor-picker]').each(function () {
      var element = $(this);
      var options = element.data('kolor-picker') || {};
      options.onSelect = function (color) {
        element.val(color);
      };
      var colorWrapper = $('<div class="kolor-picker-color-wrapper" />');
      var color = $('<div class="kolor-picker-color"/>').css('background-color', element.val() || 'white').appendTo(colorWrapper);
      colorWrapper.insertAfter(element);
      color.kolorPicker(options);
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
