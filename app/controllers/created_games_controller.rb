class CreatedGamesController < ApplicationController
  before_action :set_created_game, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /created_games
  # GET /created_games.json
  def index
    @created_games = CreatedGame.all
  end

  # GET /created_games/1
  # GET /created_games/1.json
  def show
  end

  # GET /created_games/new
  def new
    @created_game = current_user.created_games.build
  end

  # GET /created_games/1/edit
  def edit
  end

  # POST /created_games
  # POST /created_games.json
  def create
    @created_game = current_user.created_games.build(created_game_params)


    respond_to do |format|
      if @created_game.save
        format.html { redirect_to @created_game, notice: 'Created game was successfully created.' }
        format.json { render :show, status: :created, location: @created_game }
      else
        format.html { render :new }
        format.json { render json: @created_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /created_games/1
  # PATCH/PUT /created_games/1.json
  def update
    respond_to do |format|
      if @created_game.update(created_game_params)
        format.html { redirect_to @created_game, notice: 'Created game was successfully updated.' }
        format.json { render :show, status: :ok, location: @created_game }
      else
        format.html { render :edit }
        format.json { render json: @created_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /created_games/1
  # DELETE /created_games/1.json
  def destroy
    @created_game.destroy
    respond_to do |format|
      format.html { redirect_to created_games_url, notice: 'Created game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @created_game = current_user.created_games.find_by(id: params[:id])
    redirect_to created_games_path, notice: "Not Authorized To Edit This Game" if @created_game.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_created_game
      @created_game = CreatedGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def created_game_params
      params.require(:created_game).permit(:game_id, :title, :image, :system, :released_date, :user_id, :service)
    end
end
