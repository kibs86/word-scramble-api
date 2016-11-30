class WordsController < OpenReadController
  # class WordsController < ApplicationController
  before_action :set_word, only: [:update, :destroy]
  before_action :fetch_comp_words, only: [:getword]
  before_action :fetch_cust_response, only: [:getword]

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

  def fetch_comp_words
    # get a list of all completed words
    @comp_words = \
      Word.joins(:completed_words).where('completed_words.user_id' => current_user).ids
  end

  def fetch_cust_response
    @custom_response = { word: { id: '', word: '', creator: '', difficulty: ''} }
  end

  def getword
    # get difficulty from parameters
    @diff = params[:difficulty]

    # get a list of all words with that difficulty tier
    @diff_words = Word.where('difficulty' => @diff).ids

    # remove ids from @words that are in @comp_words
    @words = []
    @diff_words.each do |x|
      @words.push(x) if @comp_words.exclude?(x)
    end

    # if words array is empty, send back custom response for error handling
    return render json: @custom_response if @words.empty?

    # from that list, get one at random to return
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
