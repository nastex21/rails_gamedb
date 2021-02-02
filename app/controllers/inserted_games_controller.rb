class InsertedGamesController < ApplicationController
  before_action :set_inserted_game, only: [:show, :edit, :update, :destroy]

  # GET /inserted_games
  # GET /inserted_games.json
  def index
    @inserted_games = InsertedGame.all
  end

  # GET /inserted_games/1
  # GET /inserted_games/1.json
  def show
  end

  # GET /inserted_games/new
  def new
    @inserted_game = InsertedGame.new
  end

  # GET /inserted_games/1/edit
  def edit
  end

  # POST /inserted_games
  # POST /inserted_games.json
  def create
    @inserted_game = InsertedGame.new(inserted_game_params)

    respond_to do |format|
      if @inserted_game.save
        format.html { redirect_to @inserted_game, notice: 'Inserted game was successfully created.' }
        format.json { render :show, status: :created, location: @inserted_game }
      else
        format.html { render :new }
        format.json { render json: @inserted_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inserted_games/1
  # PATCH/PUT /inserted_games/1.json
  def update
    respond_to do |format|
      if @inserted_game.update(inserted_game_params)
        format.html { redirect_to @inserted_game, notice: 'Inserted game was successfully updated.' }
        format.json { render :show, status: :ok, location: @inserted_game }
      else
        format.html { render :edit }
        format.json { render json: @inserted_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inserted_games/1
  # DELETE /inserted_games/1.json
  def destroy
    @inserted_game.destroy
    respond_to do |format|
      format.html { redirect_to inserted_games_url, notice: 'Inserted game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inserted_game
      @inserted_game = InsertedGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inserted_game_params
      params.fetch(:inserted_game, {})
    end
end
