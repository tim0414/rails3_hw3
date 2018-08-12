class Employee < ActiveRecord::Base
    attr_accessible :name

    has_many :duties, :dependent => :destroy
end
