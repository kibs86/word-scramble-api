class CompletedWordsController < ApplicationController
  before_action :set_completed_word, only: [:show, :update, :destroy]

  # GET /completed_words
  # GET /completed_words.json
  def index
    @completed_words = CompletedWord.all

    render json: @completed_words
  end

  # GET /completed_words/1
  # GET /completed_words/1.json
  def show
    render json: @completed_word
  end

  # POST /completed_words
  # POST /completed_words.json
  def create
    @completed_word = CompletedWord.new(completed_word_params)

    if @completed_word.save
      render json: @completed_word, status: :created, location: @completed_word
    else
      render json: @completed_word.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /completed_words/1
  # PATCH/PUT /completed_words/1.json
  def update
    @completed_word = CompletedWord.find(params[:id])

    if @completed_word.update(completed_word_params)
      head :no_content
    else
      render json: @completed_word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /completed_words/1
  # DELETE /completed_words/1.json
  def destroy
    @completed_word.destroy

    head :no_content
  end

  private

    def set_completed_word
      @completed_word = CompletedWord.find(params[:id])
    end

    def completed_word_params
      params.require(:completed_word).permit(:user_id, :word_id)
    end
end
