class ApiController < ApplicationController
  before_action -> { doorkeeper_authorize! :public }

  def index
    render text: 'oko'
  end
end
