require 'json'
require 'rest-client'

module Adapters
  class DataConnection
    attr_reader :query

    def query(url_string)
      data = RestClient::Request.execute(method: :get, url: url_string)
      test_data = Json.load(data)
    end

  end
end