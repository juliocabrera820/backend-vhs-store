class Api::V1::VhsController < ApplicationController
  before_action :set_vhs, only: %i[show update destroy]

  def index
    @vhs = Vhs.all
    render json: @vhs
  end

  def show
    render json: @vhs
  end

  def create
    @vhs = Vhs.new(vhs_params)
    if @vhs.save
      render json: @vhs, status: :created
    else
      render json: @vhs.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @vhs.destroy
    head :no_content
  end

  def update
    @vhs = Vhs.new(vhs_params)
    if @vhs.update
      render json: @vhs, status: :created
    else
      render json: @vhs.errors, status: :unprocessable_entity
    end
  end

  private

  def set_vhs
    @vhs = Vhs.find(params[:id])
  end

  def vhs_params
    params.permit(:serial_number, :movie_id)
  end
end