class KitchenStaffsController < ApplicationController
  before_action :set_kitchen_staff, only: [:show, :edit, :update, :destroy]

  # GET /kitchen_staffs
  # GET /kitchen_staffs.json
  def index
    @kitchen_staffs = KitchenStaff.all
  end

  # GET /kitchen_staffs/1
  # GET /kitchen_staffs/1.json
  def show
  end

  # GET /kitchen_staffs/new
  def new
    @kitchen_staff = KitchenStaff.new
  end

  # GET /kitchen_staffs/1/edit
  def edit
  end

  # POST /kitchen_staffs
  # POST /kitchen_staffs.json
  def create
    @kitchen_staff = KitchenStaff.new(kitchen_staff_params)

    respond_to do |format|
      if @kitchen_staff.save
        format.html { redirect_to @kitchen_staff, notice: 'Kitchen staff was successfully created.' }
        format.json { render :show, status: :created, location: @kitchen_staff }
      else
        format.html { render :new }
        format.json { render json: @kitchen_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchen_staffs/1
  # PATCH/PUT /kitchen_staffs/1.json
  def update
    respond_to do |format|
      if @kitchen_staff.update(kitchen_staff_params)
        format.html { redirect_to @kitchen_staff, notice: 'Kitchen staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitchen_staff }
      else
        format.html { render :edit }
        format.json { render json: @kitchen_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchen_staffs/1
  # DELETE /kitchen_staffs/1.json
  def destroy
    @kitchen_staff.destroy
    respond_to do |format|
      format.html { redirect_to kitchen_staffs_url, notice: 'Kitchen staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_staff
      @kitchen_staff = KitchenStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitchen_staff_params
      params.require(:kitchen_staff).permit(:chef_name)
    end

end
