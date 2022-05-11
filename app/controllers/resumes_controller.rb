class ResumesController < ApplicationController
   def index
      @resumes = Resume.all
   end
   
   def new
      @resume = Resume.new
   end
   
   def create
      @resume = Resume.new(resume_params)
      
      if @resume.save
         redirect_to resumes_read_path
      else
         render "new"
      end
      
   end
   
   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to root, notice:  "Обьявление удалено"
   end
   
   private
      def resume_params
      params.require(:resume).permit(:phone, :addres, :comment, :spesc, :fio)
   end
   
end

