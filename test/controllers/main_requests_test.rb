require 'test_helper'
require 'net/http'
require 'json-compare'

class MainRequests < ActiveSupport::TestCase
  test "All children request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/children')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Child.all.to_json
    puts jsonreq['children']
    puts "========"
    puts jsondb
    assert_equal({}, JsonCompare.get_diff(jsonreq['children'], jsondb), "Children request doesn't match database")
  end

  test "All parents request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/parents')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Parent.all.to_json
    assert_equal({}, JsonCompare.get_diff(jsonreq['parents'], jsondb), "Parents request doesn't match database")
  end
  
  test "All transactions request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/transactions')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Transaction.all.to_json
    assert_equal({}, JsonCompare.get_diff(jsonreq['transactions'], jsondb), "Transactions request doesn't match database")
  end
  
  test "All transfers request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/transfers')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Transfer.all.to_json
    assert_equal({}, JsonCompare.get_diff(jsonreq['transfers'], jsondb), "Transfers request doesn't match database")
  end
  
  test "All links request" do
    url = URI.parse('localhost')
    req = Net::HTTP.new(url.to_s, 3000)
    res = req.get('/links')
    jsonreq = JSON.parse res.body
    jsondb = JSON.parse Link.all.to_json
    assert_equal({}, JsonCompare.get_diff(jsonreq['links'], jsondb), "Links request doesn't match database")
  end
end
