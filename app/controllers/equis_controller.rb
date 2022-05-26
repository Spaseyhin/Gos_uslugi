# frozen_string_literal: true

class EquisController < ApplicationController
  def index
    @equis = Equi.all
  end

  def new
    @equi = Equi.new
  end

  def create
    @equi = Equi.new(equi_params)

    if @equi.save
      redirect_to resumes_read_path
    else
      render 'new'
    end
  end

  def destroy
    @equi = Equi.find(params[:id])
    @equi.destroy
    redirect_to equis_path, notice: 'Обьявление удалено'
  end

  private

  def equi_params
    params.require(:equi).permit(:phone, :addres, :comment, :fio)
  end
end
