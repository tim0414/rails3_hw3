class DutiesController < ApplicationController
    
    def create
        @duty = @@employee.duties.build(params[:duty])
        if @duty.save
            flash[:success] = "Duty created!"
            #redirect_to 'employee#index'
            DutiesController.set_employee(@@employee)
            redirect_to :back
        else
            render 'employee#index'
        end
    end

    def self.set_employee(employee)
        @@employee = employee
    end
    
    def destroy
    end
end