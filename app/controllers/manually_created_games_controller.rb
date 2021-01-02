class ManuallyCreatedGamesController < ApplicationController
  before_action :set_manually_created_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /manually_created_games
  # GET /manually_created_games.json
  def index
    @manually_created_games = ManuallyCreatedGame.all
  end

  # GET /manually_created_games/1
  # GET /manually_created_games/1.json
  def show
  end

  # GET /manually_created_games/new
  def new
    @manually_created_game = ManuallyCreatedGame.new
  end

  # GET /manually_created_games/1/edit
  def edit
  end

  # POST /manually_created_games
  # POST /manually_created_games.json
  def create
    @manually_created_game = ManuallyCreatedGame.new(manually_created_game_params)

    respond_to do |format|
      if @manually_created_game.save
        format.html { redirect_to @manually_created_game, notice: 'Manually created game was successfully created.' }
        format.json { render :show, status: :created, location: @manually_created_game }
      else
        format.html { render :new }
        format.json { render json: @manually_created_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manually_created_games/1
  # PATCH/PUT /manually_created_games/1.json
  def update
    respond_to do |format|
      if @manually_created_game.update(manually_created_game_params)
        format.html { redirect_to @manually_created_game, notice: 'Manually created game was successfully updated.' }
        format.json { render :show, status: :ok, location: @manually_created_game }
      else
        format.html { render :edit }
        format.json { render json: @manually_created_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manually_created_games/1
  # DELETE /manually_created_games/1.json
  def destroy
    @manually_created_game.destroy
    respond_to do |format|
      format.html { redirect_to manually_created_games_url, notice: 'Manually created game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manually_created_game
      @manually_created_game = ManuallyCreatedGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manually_created_game_params
      params.require(:manually_created_game).permit(:game_id, :title, :image, :system, :released_date, :user_id)
    end
end
