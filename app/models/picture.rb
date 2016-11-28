class Picture < ActiveRecord::Base

  validates :army, presence: true
  validates :primer, presence: true
  validates :base, presence: true
  validates :highlight, presence: true
  validates :shade, presence: true

  def self.search(search)
    where("army LIKE ? OR primer LIKE ? OR base LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
