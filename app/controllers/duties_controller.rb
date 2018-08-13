class DutiesController < ApplicationController
    
    def create
        if @@employee.duties.build(params[:duty]).invalid?
            #redirect_to :back
            #return
            respond_to do |format|
                format.html { redirect_to :back, notice: 'Duty can not be empty.' }
                format.json { head :no_content }
            end
            return
        end

        @duty = @@employee.duties.build(params[:duty])
       
        if @duty.save
            flash[:success] = "Duty created!"
            #redirect_to 'employee#index'
            DutiesController.set_employee(@@employee)
            redirect_to :back
        else
            render 'employees#index'
        end


    end

    def self.set_employee(employee)
        @@employee = employee
        ""
    end
    
    def destroy
        @duty = Duty.find(params[:id])
        @duty.destroy

        respond_to do |format|
            format.html { redirect_to :back, notice: 'Duty was successfully destroyed.' }
            format.json { head :no_content }
        end
    end
end