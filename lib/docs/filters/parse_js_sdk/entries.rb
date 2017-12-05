module Docs
  class ParseJsSdk
    class EntriesFilter < Docs::EntriesFilter
      def get_name
        name = at_css('#main h1').content
        node = at_css("nav .nav-heading a[href='#{File.basename(slug)}']")
        index = node.parent.parent.css('> li > a').to_a.index(node)
        name.prepend "#{index + 1}. " if index
        name
    end

      def get_type
        'API'
      end

      def additional_entries
        return []
      end
    end
  end
end
