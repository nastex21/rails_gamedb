class GamedbsController < ApplicationController
  before_action :set_gamedb, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /gamedbs
  # GET /gamedbs.json
  def index
    @gamedbs = Gamedb.all
  end

  # GET /gamedbs/1
  # GET /gamedbs/1.json
  def show
  end

  # GET /gamedbs/new
  def new
    @gamedb = Gamedb.new

  end

  # GET /gamedbs/1/edit
  def edit
  end

  # POST /gamedbs
  # POST /gamedbs.json
  def create
    #@gamedb = Gamedb.new(gamedb_params)
    @gamedb = current_user.gamedbs.build(gamedb_params)


    respond_to do |format|
      if @gamedb.save
        format.html { redirect_to @gamedb, notice: 'Gamedb was successfully created.' }
        format.json { render :show, status: :created, location: @gamedb }
      else
        format.html { render :new }
        format.json { render json: @gamedb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gamedbs/1
  # PATCH/PUT /gamedbs/1.json
  def update
    respond_to do |format|
      if @gamedb.update(gamedb_params)
        format.html { redirect_to @gamedb, notice: 'Gamedb was successfully updated.' }
        format.json { render :show, status: :ok, location: @gamedb }
      else
        format.html { render :edit }
        format.json { render json: @gamedb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamedbs/1
  # DELETE /gamedbs/1.json
  def destroy
    @gamedb.destroy
    respond_to do |format|
      format.html { redirect_to gamedbs_url, notice: 'Gamedb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_user
    @gamedb = current_user.gamedbs.findby(id: params[:id])
    redirect_to gamedbs_path, notice: "Not Authorized" if @gamedb.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gamedb
      @gamedb = Gamedb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gamedb_params
      params.require(:gamedb).permit(:username, :password, :steamID, :user_id)
    end
end
