class Intervention < ApplicationRecord
    belongs_to :employee
    belongs_to :customer
    belongs_to :building
end
