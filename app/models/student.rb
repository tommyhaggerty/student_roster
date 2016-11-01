class Student < ApplicationRecord
  validates :first_name, presence
  validates :last_name, presence
  validates :email, presence, :format => /@/
  # how to modify to_i to check for numericality and ignore "-"
  validates :cell_number, presence, :allow_nil, :format => /[0-9]/
  validates :home_number, presence, :allow_nil, :format => /[0-9]/
  validates :work_number, presence, :allow_nil, :format => /[0-9]/
end
