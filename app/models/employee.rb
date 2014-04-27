class Employee < ActiveRecord::Base
  has_many :invoices
end
