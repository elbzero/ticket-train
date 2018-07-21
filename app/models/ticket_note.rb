# == Schema Information
#
# Table name: ticket_notes
#
#  id         :bigint(8)        not null, primary key
#  ticket_id  :integer
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TicketNote < ApplicationRecord
  belongs_to :ticket
end
