class Duty < ActiveRecord::Base
    attr_accessible :description
    validates :employee_id, presence: true

    belongs_to :employee
end
