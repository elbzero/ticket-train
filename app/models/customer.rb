class Customer < ApplicationRecord
  has_many :tickets

  def name
    "#{first_name} #{last_name}"
  end
end
