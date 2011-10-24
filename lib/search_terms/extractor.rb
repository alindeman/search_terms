module SearchTerms
  # Expects to be mixed into an object that responds to:
  # * fragment: URI parameters after a #
  # * query: URI parameters afer a ?
  # * host: URI host
  module Extractor
    def search_string
      case search_engine
      when :google
        query_parameters["q"].first
      when :yahoo
        query_parameters["p"].first
      end
    end

    private

    def search_engine
      case host
      when /google\./
        :google
      when /yahoo\./
        :yahoo
      end
    end

    def query_parameters
      CGI.parse(query || fragment || "")
    end
  end
end
