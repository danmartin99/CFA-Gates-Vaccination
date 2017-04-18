class GrCrdsController < ApplicationController
  before_action :set_gr_crd, only: [:show, :edit, :update, :destroy]

  # GET /gr_crds
  # GET /gr_crds.json
  def index
    @gr_crds = GrCrd.all
  end

  # GET /gr_crds/1
  # GET /gr_crds/1.json
  def show
  end

  # GET /gr_crds/new
  def new
    @gr_crd = GrCrd.new
  end

  # GET /gr_crds/1/edit
  def edit
  end

  # POST /gr_crds
  # POST /gr_crds.json
  def create
    @gr_crd = GrCrd.new(gr_crd_params)

    respond_to do |format|
      if @gr_crd.save
        format.html { redirect_to @gr_crd, notice: 'Gr crd was successfully created.' }
        format.json { render :show, status: :created, location: @gr_crd }
      else
        format.html { render :new }
        format.json { render json: @gr_crd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gr_crds/1
  # PATCH/PUT /gr_crds/1.json
  def update
    respond_to do |format|
      if @gr_crd.update(gr_crd_params)
        format.html { redirect_to @gr_crd, notice: 'Gr crd was successfully updated.' }
        format.json { render :show, status: :ok, location: @gr_crd }
      else
        format.html { render :edit }
        format.json { render json: @gr_crd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gr_crds/1
  # DELETE /gr_crds/1.json
  def destroy
    @gr_crd.destroy
    respond_to do |format|
      format.html { redirect_to gr_crds_url, notice: 'Gr crd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gr_crd
      @gr_crd = GrCrd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gr_crd_params
      params.require(:gr_crd).permit(:g_nam1, :g_name2, :g_idnum, :g_photo, :g_title, :g_email)
    end
end
