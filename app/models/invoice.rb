class Invoice < ActiveRecord::Base
  belongs_to :employee
  has_many :purchases, dependent: :destroy
end
