require 'spec_helper'

describe ActionView::Helpers::FormBuilder do
  let(:template) do
    ActionView::Base.new
  end

  describe "#colorpicker" do
    let(:builder) { ActionView::Helpers::FormBuilder.new(:item, nil, template, {}) }

    context "with options" do
      subject { builder.colorpicker(:color, :doRender => false) }
      it { should eq "<input data-kolor-picker=\"{&quot;doRender&quot;:false}\" type=\"hidden\" name=\"item[color]\" id=\"item_color\" />" }
    end

    context "without options" do
      subject { builder.colorpicker(:color) }
      it { should eq "<input data-kolor-picker=\"{}\" type=\"hidden\" name=\"item[color]\" id=\"item_color\" />" }
    end
  end
end
