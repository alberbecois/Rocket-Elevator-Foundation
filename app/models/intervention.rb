class Intervention < ApplicationRecord
    belongs_to :employees
    belongs_to :customers
    belongs_to :buildings
end
