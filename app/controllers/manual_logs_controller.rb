# frozen_string_literal: true

class ManuallogsController < ApplicationController
  before_action :set_tab

  def new
    @log = Log.new
  end

  def create
    @log = current_user.logs.build(log_params)
    @log.creating_manually = true
    if @log.save
      redirect_to timer_index_path, notice: '<i class="iconly-0651-smile"></i> Got it! New time worked created.'
    else
      render :new
    end
  end

  private

  def set_tab
    activate_tab :manual
  end

  def log_params
    params.require(:log).permit(:task_id, :start_at_formatted, :end_at_time)
  end
end
