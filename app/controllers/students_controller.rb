class StudentsController < ApplicationController
    def index
      @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
            #1 way 
            # first_name: params[:student][:first_name],
            # last_name: params[:student][:last_name],
            # email: params[:student][:email]

             
            
        
        if @student.save
            redirect_to students_path
        else
            render :new
        end
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email)
    end
end