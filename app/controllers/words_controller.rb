class WordsController < OpenReadController
  # class WordsController < ApplicationController
  before_action :set_word, only: [:update, :destroy]

  # GET /words
  # GET /words.json
  def index
    @words = Word.all

    render json: @words
  end

  # GET /words/1
  # GET /words/1.json
  def show
    render json: @word
  end

  def getword
    @diff = params[:difficulty]
    @words = Word.where('difficulty' => @diff).ids
    @word = Word.find(@words[rand(@words.length)])
    render json: @word
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(word_params)

    if @word.save
      render json: @word, status: :created, location: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    @word = Word.find(params[:id])

    if @word.update(word_params)
      head :no_content
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy

    head :no_content
  end

  def set_word
    @word = Word.find(params[:id])
  end

  def word_params
    params.require(:word).permit(:word, :difficulty, :creator)
  end

  private :set_word, :word_params
end
