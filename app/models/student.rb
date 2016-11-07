class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence, format: { with: /@/}
  # how to modify to_i to check for numericality and ignore "-"
  validates :cell_number, presence, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates :home_number, presence, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates :work_number, presence, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
end
