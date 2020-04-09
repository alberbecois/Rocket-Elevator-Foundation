class InterventionsController < ApplicationController

  def new
    @intervention = Intervention.new
  end

  def create
    @intervention = Intervention.new(intervention_params)
    if @intervention.save
      flash[:notice] = "add new intervention successfull "
      redirect_to :index
    else
      flash[:notice] = "add new intervention not successfull "
      redirect_to action:"new"
    end
  end

  private

    def intervention_params
      params.require(:intervention).permit(:author_id, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :report)
    end

end
