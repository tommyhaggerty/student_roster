class Student < ApplicationRecord
  validates :first_name, presence
  validates :last_name, presence
  validates :email, presence
  # how to modify to_i to check for numericality and ignore "-"
  validates :cell_number, presence, :allow_nil
  validates :home_number, presence, :allow_nil
  validates :work_number, presence, :allow_nil
end
