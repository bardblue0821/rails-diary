class DiaryappsController < ApplicationController
  before_action :set_diaryapp, only: %i[ show edit update destroy ]

  # GET /diaryapps or /diaryapps.json
  def index
    @diaryapps = Diaryapp.all
  end

  # GET /diaryapps/1 or /diaryapps/1.json
  def show
  end

  # GET /diaryapps/new
  def new
    @diaryapp = Diaryapp.new
  end

  # GET /diaryapps/1/edit
  def edit
  end

  # POST /diaryapps or /diaryapps.json
  def create
    @diaryapp = Diaryapp.new(diaryapp_params)

    respond_to do |format|
      if @diaryapp.save
        format.html { redirect_to diaryapp_url(@diaryapp), notice: "Diaryapp was successfully created." }
        format.json { render :show, status: :created, location: @diaryapp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diaryapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diaryapps/1 or /diaryapps/1.json
  def update
    respond_to do |format|
      if @diaryapp.update(diaryapp_params)
        format.html { redirect_to diaryapp_url(@diaryapp), notice: "Diaryapp was successfully updated." }
        format.json { render :show, status: :ok, location: @diaryapp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diaryapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diaryapps/1 or /diaryapps/1.json
  def destroy
    @diaryapp.destroy!

    respond_to do |format|
      format.html { redirect_to diaryapps_url, notice: "Diaryapp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diaryapp
      @diaryapp = Diaryapp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diaryapp_params
      params.require(:diaryapp).permit(:title, :body)
    end
end
