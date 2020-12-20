class Api::V1::ClientsController < ApplicationController
  before_action :set_client, only: %i[show update delete]

  def index
    @clients = Client.all
    render json: @clients
  end

  def show
    render json: @client
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy
  end

  def update
    @client = Client.new(client_params)
    if @client.update
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.permit(:name, :home_address)
  end
end