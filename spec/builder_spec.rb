require 'spec_helper'

describe ActionView::Helpers::FormBuilder do
  class Theme
    def color
      'white'
    end
  end

  let(:template) do
    ActionView::Base.new
  end

  describe "#colorpicker" do
    let(:theme) { Theme.new }
    let(:builder) { ActionView::Helpers::FormBuilder.new(:item, theme, template, {}) }

    context "with options" do
      subject { builder.colorpicker(:color, :doRender => false) }
      it { should eq "<input data-widget-kolor-picker=\"{&quot;doRender&quot;:false}\" type=\"text\" value=\"white\" name=\"item[color]\" id=\"item_color\" />" }
    end

    context "without options" do
      subject { builder.colorpicker(:color) }
      it { should eq "<input data-widget-kolor-picker=\"{}\" type=\"text\" value=\"white\" name=\"item[color]\" id=\"item_color\" />" }
    end
  end
end
