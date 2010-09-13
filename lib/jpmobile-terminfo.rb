# -*- coding: utf-8 -*-
$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) ||
                                          $:.include?(File.expand_path(File.dirname(__FILE__)))

module Jpmobile
  module Mobile
    autoload :Terminfo, 'jpmobile/mobile/terminfo'
  end
end
