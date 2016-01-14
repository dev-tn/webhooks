class HooksController < ApplicationController
  def payload
    # push = JSON.parse(request.body.read)
    # puts "I got some JSON: #{push.inspect}"
    respond_to do |format|
      format.js
    end
  end
end
