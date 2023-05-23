class Farm < ActiveRecord::Base
    has_many :beds, :dependent => :delete_all

end