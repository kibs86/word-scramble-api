class CompletedWordsController < OpenReadController
  # before_action :set_completed_word, only: [:update, :destroy]
  before_action :set_completed_word, only: [:update]

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
    # @completed_word = CompletedWord.new(completed_word_params)
    @completed_word = current_user.completed_words.build(completed_word_params)
    @completed_word.user_id = current_user.id

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
    # if params[:all] == true
    #   CompletedWord.where(user_id: current_user.id).destroy_all
    # end
    CompletedWord.where(user_id: current_user.id).destroy_all

    # head :no_content
    # @completed_word.destroy
    #
    # head :no_content
  end

  def set_completed_word
    # @completed_word = CompletedWord.find(params[:id])
    @completed_word = current_user.words.find(params[:id])
  end

  def completed_word_params
    params.require(:completed_word).permit(:user_id, :word_id)
  end

  private :set_completed_word, :completed_word_params
end
