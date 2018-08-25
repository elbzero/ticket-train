# == Schema Information
#
# Table name: tickets
#
#  id          :bigint(8)        not null, primary key
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ticket < ApplicationRecord
  has_many :ticket_notes
  belongs_to :customer
end
