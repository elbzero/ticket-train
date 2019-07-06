require 'rails_helper'

RSpec.describe WorkLog, type: :model do

  before(:each) do
    @customer = Customer.create!()
    @ticket = Ticket.create!(customer: @customer)
  end


  it 'does not allow Start Time and End Time to be empty.' do
    worklog = WorkLog.new(ticket: @ticket)
    expect(worklog.save).to be_falsey
  end

  it 'does not allow Start Time to be greater than End Time.' do
    worklog = WorkLog.new(ticket: @ticket, start_time: 1.hour.from_now, end_time: DateTime.now)
    expect(worklog.save).to be_falsey
  end


  it 'allows for a valid work log to be entered' do
    worklog = WorkLog.new(ticket: @ticket, start_time: DateTime.now, end_time: 1.hour.from_now)
    expect(worklog.save).to be_truthy
  end

  it 'calculates Total Time correctly.' do
    worklog = WorkLog.create(ticket: @ticket, start_time: DateTime.now, end_time: 1.hour.from_now)
    expect(worklog.total_time).to eq 1
  end

end
