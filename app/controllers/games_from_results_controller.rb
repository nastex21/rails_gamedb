class GamesFromResultsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_games_from_result, only: [:show, :edit, :update, :destroy]

  # GET /games_from_results
  # GET /games_from_results.json
  def index
    @games_from_results = GamesFromResult.all
  end

  # GET /games_from_results/1
  # GET /games_from_results/1.json
  def show
  end

  # GET /games_from_results/new
  def new
    @games_from_result = GamesFromResult.new
  end

  # GET /games_from_results/1/edit
  def edit
  end

  # POST /games_from_results
  # POST /games_from_results.json
  def create

    savedgames = games_from_result_params.map { |v| v['user_id'] = current_user.id; v }

    response = GamesFromResult.create!(savedgames)

    if response.all? { |group| group.persisted? }
     flash.now[:notice] = "Game successfully added."
     render json: { success: true, message: "Games created." }
    else
     errors = response.map { |group| group.errors.full_messages.empty? ? nil : group.errors.full_messages }.compact.join("<br/>") # gross one-liner to show you where the errors live
     render_422 response, "Could not save groups. Here are the errors: #{errors}"
    end

    rescue ActiveRecord::RecordNotUnique  => e
      render json: {
        status: 422,
        error: 'Duplicate game found.'
     }, 
     status: :unprocessable_entity
  end

  # PATCH/PUT /games_from_results/1
  # PATCH/PUT /games_from_results/1.json
  def update
    respond_to do |format|
      if @games_from_result.update(games_from_result_params)
        format.html { redirect_to @games_from_result, notice: 'Games from result was successfully updated.' }
        format.json { render :show, status: :ok, location: @games_from_result }
      else
        format.html { render :edit }
        format.json { render json: @games_from_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games_from_results/1
  # DELETE /games_from_results/1.json
  def destroy
    @games_from_result.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Games from result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_games_from_result
      @games_from_result = GamesFromResult.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def games_from_result_params
      params.require(:games_from_result).map do |p|
        p.permit(:game_id, :title, :image, :system, :released_date, :user_id, :service)
      end
    end
end
