class Api::V1::ItemsController < Api::BaseController

  before_filter :restrict_access

  respond_to :json
  require 'pry'

  def index
    @items = Item.all
    respond_to do |format|
      format.json { render :json => @items.map { |item| {:name => item.name, :description => item.description} } }
    end
  end

  def show
  end

  private

  def restrict_access
  	authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token, ip_address: request.remote_ip)
    end
  end

end