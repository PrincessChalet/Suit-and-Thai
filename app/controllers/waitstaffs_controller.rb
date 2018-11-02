class WaitstaffsController < ApplicationController
  before_action :set_waitstaff, only: [:show, :edit, :update, :destroy]

  # GET /waitstaffs
  # GET /waitstaffs.json
  def index
    @waitstaffs = Waitstaff.all
  end

  # GET /waitstaffs/1
  # GET /waitstaffs/1.json
  def show
  end

  # GET /waitstaffs/new
  def new
    @waitstaff = Waitstaff.new
  end

  # GET /waitstaffs/1/edit
  def edit
  end

  # POST /waitstaffs
  # POST /waitstaffs.json
  def create
    @waitstaff = Waitstaff.new(waitstaff_params)

    respond_to do |format|
      if @waitstaff.save
        format.html { redirect_to @waitstaff, notice: 'Waitstaff was successfully created.' }
        format.json { render :show, status: :created, location: @waitstaff }
      else
        format.html { render :new }
        format.json { render json: @waitstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waitstaffs/1
  # PATCH/PUT /waitstaffs/1.json
  def update
    respond_to do |format|
      if @waitstaff.update(waitstaff_params)
        format.html { redirect_to @waitstaff, notice: 'Waitstaff was successfully updated.' }
        format.json { render :show, status: :ok, location: @waitstaff }
      else
        format.html { render :edit }
        format.json { render json: @waitstaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waitstaffs/1
  # DELETE /waitstaffs/1.json
  def destroy
    @waitstaff.destroy
    respond_to do |format|
      format.html { redirect_to waitstaffs_url, notice: 'Waitstaff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waitstaff
      @waitstaff = Waitstaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waitstaff_params
      params.require(:waitstaff).permit(:tables, :customer_names, :waitstaff_id, :waitstaff_name)
    end
end
