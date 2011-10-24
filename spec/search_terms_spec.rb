require "spec_helper"

describe SearchTerms::Extractor do
  context "non-search engine" do
    it "returns nil for search terms even if they are present" do
      uri = URI("http://andylindeman.com/?q=how+to+do+everything")
      uri.search_string.should be_nil
    end

    it "returns nil for search terms if they are not present" do
      uri = URI("http://andylindeman.com/")
      uri.search_string.should be_nil
    end
  end

  context "google" do
    it "returns search terms from query string" do
      uri = URI("http://google.com/?q=how+to+extract+search+terms")
      uri.search_string.should == "how to extract search terms"
    end

    it "returns search terms from query fragment" do
      uri = URI("http://google.com/#q=how+to+extract+search+terms")
      uri.search_string.should == "how to extract search terms"
    end
  end
end
