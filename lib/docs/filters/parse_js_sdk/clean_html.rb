module Docs
  class ParseJsSdk
    class CleanHtmlFilter < Filter
      def call
        @doc = at_css('#main')
        doc
      end
    end
  end
end
