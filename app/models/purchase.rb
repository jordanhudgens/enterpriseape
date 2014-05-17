class Purchase < ActiveRecord::Base
  belongs_to :invoice
end
