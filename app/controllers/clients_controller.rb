class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end
  
  def new
    @client = Client.new
  end

  def create
    # @client = Client.new(params[:name], params[:description], params[:status])
  end

  private

  def create_params
    @create_params = params.permit(:name, :description, :status)
  end
end
