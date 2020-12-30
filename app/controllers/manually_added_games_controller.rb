class ManuallyAddedGamesController < ApplicationController
  before_action :set_manually_added_game, only: [:show, :edit, :update, :destroy]

  # GET /manually_added_games
  # GET /manually_added_games.json
  def index
    @manually_added_games = ManuallyAddedGame.all
  end

  # GET /manually_added_games/1
  # GET /manually_added_games/1.json
  def show
  end

  # GET /manually_added_games/new
  def new
    @manually_added_game = ManuallyAddedGame.new
  end

  # GET /manually_added_games/1/edit
  def edit
  end

  # POST /manually_added_games
  # POST /manually_added_games.json
  def create
    @manually_added_game = ManuallyAddedGame.new(manually_added_game_params)

    respond_to do |format|
      if @manually_added_game.save
        format.html { redirect_to @manually_added_game, notice: 'Manually added game was successfully created.' }
        format.json { render :show, status: :created, location: @manually_added_game }
      else
        format.html { render :new }
        format.json { render json: @manually_added_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manually_added_games/1
  # PATCH/PUT /manually_added_games/1.json
  def update
    respond_to do |format|
      if @manually_added_game.update(manually_added_game_params)
        format.html { redirect_to @manually_added_game, notice: 'Manually added game was successfully updated.' }
        format.json { render :show, status: :ok, location: @manually_added_game }
      else
        format.html { render :edit }
        format.json { render json: @manually_added_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manually_added_games/1
  # DELETE /manually_added_games/1.json
  def destroy
    @manually_added_game.destroy
    respond_to do |format|
      format.html { redirect_to manually_added_games_url, notice: 'Manually added game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manually_added_game
      @manually_added_game = ManuallyAddedGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manually_added_game_params
      params.require(:manually_added_game).permit(:title)
    end
end
