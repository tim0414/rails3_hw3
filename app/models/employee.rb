class Employee < ActiveRecord::Base
    attr_accessible :name
    validates :name, presence: true

    has_many :duties, :dependent => :destroy
end
