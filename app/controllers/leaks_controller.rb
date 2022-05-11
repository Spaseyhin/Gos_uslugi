class LeaksController < ApplicationController

   def index
      @leaks = Leak.all
   end
   
   def new
      @leak = Leak.new
   end
   
   def create
      @leak = Leak.new(leak_params)
      
      if @leak.save
         redirect_to resumes_read_path
      else
         render "new"
      end

      
      
   end
   
   def destroy
      @leak = Leak.find(params[:id])
      @leak.destroy
      redirect_to leaks_path , notice:  "Обьявление удалено"
   end
   
   private
      def leak_params
      params.require(:leak).permit(:phone, :addres, :comment, :fio)
   end
   
end


