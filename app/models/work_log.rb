class WorkLog < ApplicationRecord
  belongs_to :ticket
  validates :start_time,:end_time, presence: true
  validate :start_time_valid

  def start_time_valid
    errors.add(:start_time,'Start Time CANNOT be AFTER End Time') if start_time.present? && start_time > end_time
  end

  def total_time
    ((end_time - start_time) / 60 / 60).round(2)
  end

  def self.ticket_total(ticket)
    ticket.work_logs.sum &:total_time
  end
end
