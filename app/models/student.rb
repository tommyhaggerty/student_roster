class Student < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, Format: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # how to modify to_i to check for numericality and ignore "-"
  validates :cell_number, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates :home_number, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
  validates :work_number, :allow_nil, format: { with: /\d{3}-\d{3}-\d{4}/, message: "bad format" }
end
