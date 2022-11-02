# frozen_string_literal: true

class TimerController < ApplicationController
  before_action :set_tab
  before_action :authenticate_user!
  layout "projlog"
  def index
    @slot = Slot.where(user: current_user,end_at: nil).order(start_at: :desc).first
    if @slot.nil?
      @slot = Slot.new
    end
    load_recent_slots
  end

  private

  def set_tab
    activate_tab :timer
  end
end
