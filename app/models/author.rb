class Author < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  has_and_belongs_to_many :papers

  def name
    "#{self[:first_name]} #{self[:last_name]}"
  end
end
