require 'minitest/autorun'
require 'net/http'

class BasicLoadTest < Minitest::Test
  def test_page_loads
    # Ensure 'bundle exec jekyll serve --port 4000 --detach' is running first
    response = Net::HTTP.get_response(URI("http://127.0.0.1:4000"))
    assert_equal('200', response.code)
  end
end