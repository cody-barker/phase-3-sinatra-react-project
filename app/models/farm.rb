class Farm < ActiveRecord::Base
    has_many :beds, :dependent => :delete_all

    validates_uniqueness_of :name
end