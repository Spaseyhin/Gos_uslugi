class ElectricsController < ApplicationController

   def index
      @electrics = Electric.all
   end
   
   def new
      @electric = Electric.new
   end
   
   def create
      @electric = Electric.new(electric_params)
      
      if @electric.save
         redirect_to resumes_read_path
      else
         render "new"
      end

      
      
   end
   
   def destroy
      @electric = Electric.find(params[:id])
      @electric.destroy
      redirect_to electrics_path , notice:  "Обьявление удалено"
   end
   
   private
      def electric_params
      params.require(:electric).permit(:phone, :addres, :comment, :fio)
   end
   
end


