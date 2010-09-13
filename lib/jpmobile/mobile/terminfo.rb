require 'singleton'

module Jpmobile
  module Mobile
    module Terminfo
      autoload :Docomo, 'jpmobile/mobile/terminfo/docomo'

      module_function
      def docomo(model_name)
        Docomo::DISPLAY_INFO[model_name] || {}
      end
    end
  end
end
