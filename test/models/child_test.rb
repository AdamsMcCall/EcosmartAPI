require 'test_helper'
require 'net/http'
require 'json-compare'

class ChildTest < ActiveSupport::TestCase
  test "should not save child without some mandatory stuff" do
    child = Child.new
    assert_not child.save
  end

  test "all children request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/children')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Child.all.to_json
    assert_equal({}, JsonCompare.get_diff(jsonreq['children'], jsondb), "Request doesn't match database")
  end
end
