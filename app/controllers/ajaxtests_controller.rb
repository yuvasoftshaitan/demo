class AjaxtestsController < ApplicationController
  before_action :set_ajaxtest, only: %i[ show edit update destroy ]

  # GET /ajaxtests or /ajaxtests.json
  def index
    @ajaxtests = Ajaxtest.all
  end

  # GET /ajaxtests/1 or /ajaxtests/1.json
  def show
  end

  # GET /ajaxtests/new
  def new
    @ajaxtest = Ajaxtest.new
  end

  # GET /ajaxtests/1/edit
  def edit
  end

  # POST /ajaxtests or /ajaxtests.json
  def create
    @ajaxtest = Ajaxtest.new(ajaxtest_params)

    respond_to do |format|
      if @ajaxtest.save
        format.html { redirect_to ajaxtest_url(@ajaxtest), notice: "Ajaxtest was successfully created." }
        format.json { render :show, status: :created, location: @ajaxtest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ajaxtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ajaxtests/1 or /ajaxtests/1.json
  def update
    respond_to do |format|
      if @ajaxtest.update(ajaxtest_params)
        format.html { redirect_to ajaxtest_url(@ajaxtest), notice: "Ajaxtest was successfully updated." }
        format.json { render :show, status: :ok, location: @ajaxtest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ajaxtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ajaxtests/1 or /ajaxtests/1.json
  def destroy
    @ajaxtest.destroy

    respond_to do |format|
      format.html { redirect_to ajaxtests_url, notice: "Ajaxtest was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ajaxtest
      @ajaxtest = Ajaxtest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ajaxtest_params
      params.require(:ajaxtest).permit(:name, :mobile)
    end
end
