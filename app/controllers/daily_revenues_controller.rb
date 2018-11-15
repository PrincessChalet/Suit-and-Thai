class DailyRevenuesController < ApplicationController
  before_action :set_daily_revenue, only: [:show, :edit, :update, :destroy]

  # GET /daily_revenues
  # GET /daily_revenues.json
  def index
    @daily_revenues = DailyRevenue.all
  end

  # GET /daily_revenues/1
  # GET /daily_revenues/1.json
  def show
  end

  # GET /daily_revenues/new
  def new
    @daily_revenue = DailyRevenue.new
  end

  # GET /daily_revenues/1/edit
  def edit
  end

  # POST /daily_revenues
  # POST /daily_revenues.json
  def create
    @daily_revenue = DailyRevenue.new(daily_revenue_params)

    respond_to do |format|
      if @daily_revenue.save
        format.html { redirect_to @daily_revenue, notice: 'Daily revenue was successfully created.' }
        format.json { render :show, status: :created, location: @daily_revenue }
      else
        format.html { render :new }
        format.json { render json: @daily_revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_revenues/1
  # PATCH/PUT /daily_revenues/1.json
  def update
    respond_to do |format|
      if @daily_revenue.update(daily_revenue_params)
        format.html { redirect_to @daily_revenue, notice: 'Daily revenue was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_revenue }
      else
        format.html { render :edit }
        format.json { render json: @daily_revenue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_revenues/1
  # DELETE /daily_revenues/1.json
  def destroy
    @daily_revenue.destroy
    respond_to do |format|
      format.html { redirect_to daily_revenues_url, notice: 'Daily revenue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_revenue
      @daily_revenue = DailyRevenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_revenue_params
      params.require(:daily_revenue).permit(:title, :total, :food, :tax, :tips)
    end
end
