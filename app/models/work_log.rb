class WorkLog < ApplicationRecord
  belongs_to :ticket

  def total_time
    ((end_time - start_time) / 60 / 60).round(2)
  end

  def self.ticket_total(ticket)
    ticket.work_logs.sum &:total_time
  end
end
