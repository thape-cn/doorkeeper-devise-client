class ApiController < ApplicationController
  respond_to :json

  def explore
    @json = doorkeeper.get(params[:api]).parsed
    respond_with @json
  end
end
