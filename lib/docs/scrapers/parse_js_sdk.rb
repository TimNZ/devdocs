module Docs
  class ParseJsSdk < UrlScraper
    self.name = 'ParseJsSdk'
    self.slug = 'parse_js_sdk'
    self.type = 'parse_js_sdk'
    self.links = {
      home: 'https://parseplatform.org/',
      code: 'https://github.com/parse-community/Parse-SDK-JS/'
    }

    html_filters.push 'parse_js_sdk/entries', 'parse_js_sdk/clean_html'
    options[:only_patterns] = [/api\//]
    options[:attribution] = <<-HTML
      Copyright &copy; 2015&ndash;present, Parse, LLC.<br>
      All rights reserved.<br>
      This source code is licensed under the BSD-style license found in the<br>
      LICENSE file in the root directory of this source tree. An additional grant<br>
      of patent rights can be found in the PATENTS file in the same directory.
    HTML

    version '1.11' do
      self.release = '1.11.0'
      self.base_url = "http://parseplatform.org/Parse-SDK-JS/api/v#{release}/"
    end

  end
end
