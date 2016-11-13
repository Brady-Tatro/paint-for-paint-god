class Color < ActiveRecord::Base

  validates :name, presence: true
  validates :hex, length: { is: 7 }
end
