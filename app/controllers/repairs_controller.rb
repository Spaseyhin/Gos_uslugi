# frozen_string_literal: true

class RepairsController < ApplicationController
  def index
    @repairs = Repair.all
  end

  def new
    @repair = Repair.new
  end

  def create
    @repair = Repair.new(repair_params)

    if @repair.save
      redirect_to resumes_read_path
    else
      render 'new'
    end
  end

  def destroy
    @repair = Repair.find(params[:id])
    @repair.destroy
    redirect_to repairs_path, notice: 'Обьявление удалено'
  end

  private

  def repair_params
    params.require(:repair).permit(:phone, :addres, :comment, :fio)
  end
end
