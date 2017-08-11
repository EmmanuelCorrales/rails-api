class QuizItemsController < ApplicationController
  before_action :set_quiz_item, only: [:show, :update, :destroy]

  # GET /quiz_items
  def index
    @quiz_items = QuizItem.all

    render json: @quiz_items
  end

  # GET /quiz_items/1
  def show
    render json: @quiz_item
  end

  # POST /quiz_items
  def create
    @quiz_item = QuizItem.new(quiz_item_params)

    if @quiz_item.save
      render json: @quiz_item, status: :created, location: @quiz_item
    else
      render json: @quiz_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quiz_items/1
  def update
    if @quiz_item.update(quiz_item_params)
      render json: @quiz_item
    else
      render json: @quiz_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quiz_items/1
  def destroy
    @quiz_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_item
      @quiz_item = QuizItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_item_params
      params.require(:quiz_item).permit(:question, :answer)
    end
end
