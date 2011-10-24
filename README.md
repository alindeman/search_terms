# search\_terms

[![Build Status](https://secure.travis-ci.org/alindeman/search_terms.png)](http://travis-ci.org/alindeman/search_terms)

**TL;DR**: **search\_terms** extracts search terms (keywords) from
search engine referral URLs

## Quick Examples

```ruby
require "rubygems"
require "search_terms"

referrer = URI("http://google.com/?q=how+to+extract+search+terms")
referrer.search_string # => "how to extract search terms"
```
