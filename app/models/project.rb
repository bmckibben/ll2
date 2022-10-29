# frozen_string_literal: true

class Project < ApplicationRecord
  COLORS = ['#1abc9c', '#2ecc71', '#3498db', '#9b59b6', '#16a085', '#27ae60', '#2980b9', '#8e44ad', '#f1c40f',
            '#e67e22', '#e74c3c', '#f39c12', '#d35400', '#c0392b'].freeze

  CURRENCIES = %w[USD GBP EUR AUD CAD].freeze

  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :name, presence: true

  monetize :rate_cents, as: :rate, allow_nil: true

  scope :enabled, -> { where(disabled_at: nil) }

  def disabled
    disabled_at?
  end

  def disabled=(value)
    self.disabled_at = (value == '1' ? Time.current : nil)
  end
end
