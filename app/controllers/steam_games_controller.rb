class SteamGamesController < ApplicationController
        before_action :set_steam_game, only: [:show, :edit, :update, :destroy]
        before_action :authenticate_user!, except: [:index, :show]
        before_action :correct_user, only: [:edit, :update, :destroy]
      
        # GET /steam_games
        # GET /steam_games.json
        def index
          @steam_games = CreatedGame.all
        end
      
        # GET /steam_games/1
        # GET /steam_games/1.json
        def show
        end
      
        # GET /steam_games/new
        def new
          @steam_game = current_user.steam_games.build
        end
      
        # GET /steam_games/1/edit
        def edit
        end
      
        # POST /steam_games
        # POST /steam_games.json
        def create
          @steam_game = current_user.steam_games.build(steam_game_params)
      
      
          respond_to do |format|
            if @steam_game.save
              format.html { redirect_to @steam_game, notice: 'Created game was successfully created.' }
              format.json { render :show, status: :created, location: @steam_game }
            else
              format.html { render :new }
              format.json { render json: @steam_game.errors, status: :unprocessable_entity }
            end
          end
        end
      
        # PATCH/PUT /steam_games/1
        # PATCH/PUT /steam_games/1.json
        def update
          respond_to do |format|
            if @steam_game.update(steam_game_params)
              format.html { redirect_to @steam_game, notice: 'Created game was successfully updated.' }
              format.json { render :show, status: :ok, location: @steam_game }
            else
              format.html { render :edit }
              format.json { render json: @steam_game.errors, status: :unprocessable_entity }
            end
          end
        end
      
        # DELETE /steam_games/1
        # DELETE /steam_games/1.json
        def destroy
          @steam_game.destroy
          respond_to do |format|
            format.html { redirect_to steam_games_url, notice: 'Created game was successfully destroyed.' }
            format.json { head :no_content }
          end
        end
      
        def correct_user
          @steam_game = current_user.steam_games.find_by(id: params[:id])
          redirect_to steam_games_path, notice: "Not Authorized To Edit This Game" if @steam_game.nil?
        end
      
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_steam_game
            @steam_game = CreatedGame.find(params[:id])
          end
      
          # Only allow a list of trusted parameters through.
          def steam_game_params
            params.require(:steam_game).permit(:game_id, :title, :image, :system, :released_date, :user_id, :service)
          end
      end