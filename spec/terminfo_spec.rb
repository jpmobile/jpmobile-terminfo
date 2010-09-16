# -*- coding: utf-8 -*-
require File.join(File.expand_path(File.dirname(__FILE__)), 'spec_helper')

# dummy classes
module Jpmobile::Mobile
  class Docomo; end
  class Au; end
  class Softbank; end
end

describe Jpmobile::Mobile::Terminfo do
  def mock_carrier(carrier, stubs={ })
    @mock_carrier = eval("Jpmobile::Mobile::#{carrier}").new
    @mock_carrier.stub(stubs)
    @mock_carrier
  end

  context "docomoの場合" do
    it "端末情報を取得できること" do
      terminfo = Jpmobile::Mobile::Terminfo.new(mock_carrier("Docomo", {:model_name => 'SH906i'}), {})
      terminfo.color?.should be_true
      terminfo.colors.should == 16777216
      terminfo.width.should  == 240
      terminfo.height.should == 320
    end
  end

  context "auの場合" do
    it "端末情報を取得できること" do
      terminfo = Jpmobile::Mobile::Terminfo.new(mock_carrier("Au"), {
          'HTTP_X_UP_DEVCAP_SCREENPIXELS' => "240,348",
          'HTTP_X_UP_DEVCAP_ISCOLOR'      => "1",
          'HTTP_X_UP_DEVCAP_SCREENDEPTH'  => "16,RGB565"
        })
      terminfo.color?.should be_true
      terminfo.colors.should == 65536
      terminfo.width.should  == 240
      terminfo.height.should == 348
    end
  end

  context "softbankの場合" do
    it "端末情報を取得できること" do
      terminfo = Jpmobile::Mobile::Terminfo.new(mock_carrier("Softbank"), {
          'HTTP_X_JPHONE_DISPLAY' => "240*320",
          'HTTP_X_JPHONE_COLOR'   => "C262144"
        })
      terminfo.color?.should be_true
      terminfo.colors.should == 262144
      terminfo.width.should  == 240
      terminfo.height.should == 320
    end
  end
end
