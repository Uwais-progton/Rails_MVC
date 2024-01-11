class Student < ApplicationRecord
    validates :first_name,:last_name,:email, presence: true
    #populate only if these t nt empty
end
