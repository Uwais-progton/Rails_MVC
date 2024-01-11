class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

 # ApplicationRecord can be inherited but not instantiated as it is abstract class.
end
