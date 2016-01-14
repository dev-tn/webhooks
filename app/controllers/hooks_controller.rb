class HooksController < ApplicationController
  def payload
    push = JSON.parse(request.body.read)
    puts "I got some JSON: #{push.inspect}"
  end
end
