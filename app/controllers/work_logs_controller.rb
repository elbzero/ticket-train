class WorkLogsController < ApplicationController
  before_action :set_work_log, only: [:edit, :update, :destroy]


  def new
    @work_log = WorkLog.new
  end

  def edit
  end

  def create
    @work_log = WorkLog.new(work_log_params)

    respond_to do |format|
      if @work_log.save
        format.html { redirect_to @work_log, notice: 'Work Log was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @work_log.update(work_log)
             format.html { redirect_to @work_log, notice: 'Work Log was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @work_log.destroy
      respond_to do |format|
        format.html { redirect_to work_logs_url, notice: 'Work Log was successfully destroyed.'}
      end
  end

  private

    def set_work_log
      @work_log = WorkLog.find(params[:id])
    end

    def work_log_params
      params.require(:work_log).permit(:start_time, :end_time, :billable_hours)
    end

end
