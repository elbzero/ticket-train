class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get
    binding.pry
  end

  def post
    binding.pry
    # parsing JSON request
    JSON.parse(params['_json'])['test']
  end

  def put
    binding.pry
  end

  def delete
    binding.pry
  end

end
