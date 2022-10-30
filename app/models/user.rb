class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :clients, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :slots, dependent: :destroy

  enum role_cd: { normal: 1, admin: 2, super_user: 3 }

  before_create :set_defaults

  validates :first_name, presence: true
  validates :password, length: { minimum: 8 }

  private

  def set_defaults
    self.role_cd ||= :admin
  end

end
