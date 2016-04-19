require 'spec_helper'

describe KolorPicker::Helper do
  include KolorPicker::Helper
  include ActionView::Helpers::FormTagHelper

  describe "#colorpicker_tag" do
    context "with value" do
      context "with options" do
        context "with html_options" do
          subject { colorpicker_tag(:color, 'black', {:doRender => false}, {:class => :color}) }
          it { should eq "<input type=\"hidden\" name=\"color\" id=\"color\" value=\"black\" class=\"color\" data-kolor-picker=\"{&quot;doRender&quot;:false}\" />" }
        end

        context "without html_options" do
          subject { colorpicker_tag(:color, 'black', :doRender => false) }
          it { should eq "<input type=\"hidden\" name=\"color\" id=\"color\" value=\"black\" data-kolor-picker=\"{&quot;doRender&quot;:false}\" />" }
        end
      end

      context "without options" do
        context "with html_options" do
          subject { colorpicker_tag(:color, 'black', nil, :class => :color) }
          it { should eq "<input type=\"hidden\" name=\"color\" id=\"color\" value=\"black\" class=\"color\" data-kolor-picker=\"null\" />" }
        end

        context "without html_options" do
          subject { colorpicker_tag(:color, 'black') }
          it { should eq "<input type=\"hidden\" name=\"color\" id=\"color\" value=\"black\" data-kolor-picker=\"{}\" />" }
        end
      end
    end

    context "with value" do
      subject { colorpicker_tag(:color) }
      it { should eq "<input type=\"hidden\" name=\"color\" id=\"color\" data-kolor-picker=\"{}\" />" }
    end
  end
end
