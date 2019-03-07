class ContactMessage
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :congregation, :city_state, :description

  validates :name, :presence => true
  validates :congregation, :presence => true
  validates :city_state, :presence => true
  validates :email, :format  => Devise.email_regexp
  validates :description, :length => 10..1000

  def initialize(attributes = {})
    attributes.each_pair do |name, value|
      send("#{name}=", value)
    end
  end

  def deliver
    return false unless valid?
    ContactMailer.contact(self).deliver
  end

  def persisted?
    false
  end
end
