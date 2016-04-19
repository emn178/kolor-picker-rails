# kolor-picker-rails

[![Build Status](https://api.travis-ci.org/emn178/kolor-picker-rails.png)](https://travis-ci.org/emn178/kolor-picker-rails)
[![Coverage Status](https://coveralls.io/repos/emn178/kolor-picker-rails/badge.svg?branch=master)](https://coveralls.io/r/emn178/kolor-picker-rails?branch=master)

Integrate with [kolor-picker](https://github.com/emn178/kolor-picker) to provide color picker and form helper. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kolor-picker'
```

And then execute:

    bundle

Or install it yourself as:

    gem install kolor-picker

## Usage

### Require Javascript
Make sure you required **jQuery** and add the following to /app/assets/javascripts/application.js:
```JavaScript
//= require kolor-picker
```
### Require CSS
Add the following to /app/assets/stylesheets/application.css:
```CSS
/*
 *= require kolor-picker
 */
```

### Helpers
You can use `colorpicker_tag` and `colorpicker`.
```ERB
<%= colorpicker_tag(name, default_color, kolor_picker_options, html_options) %>
<%= colorpicker_tag(:color, 'red', {:doRender => false}, {:class => 'color'}) %>

or form builder

<% form_for @item do |f| %>
<%= f.colorpicker(method, default_color, kolor_picker_options, html_options) %>
<%= f.colorpicker(:color, 'red', {:doRender => false}, {:class => 'color'}) %>
<% end %>
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Contact
The project's website is located at https://github.com/emn178/kolor-picker-rails  
Author: Chen, Yi-Cyuan (emn178@gmail.com)
