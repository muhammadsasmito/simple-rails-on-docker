class ResponseController < ApplicationController
  skip_before_action :verify_authenticity_token  
  before_action :response_params, except: [:index, :show]

  def index
    @response = Response.all.order("created_at DESC")
    render json: @response.present? ? { status: :ok, result: @response, errors: nil } : { status: :unprocessable_entity, result: @response, errors: nil }
  end
  
  def show
    @response = Response.find_by(id: params[:id])
    render json: @response.present? ? { status: :ok, result: @response, errors: nil } : { status: :unprocessable_entity, result: @response, errors: nil }
  end

  def create
    @response = Response.new(response_params)
    render json: @response.save ? { status: :created, result: @response, errors: nil } : { status: :unprocessable_entity, result: nil, errors: ["Something went wrong"] }
  end

  private

  def response_params
    params.require(:feedback).permit(:email, :nip, :nama)
  end

end
