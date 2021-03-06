class User < ApplicationRecord

  # Associations
  belongs_to :role
  has_many :permissions_roles, through: :role
  has_many :permissions, through: :permissions_roles
	
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

  devise :registerable, :confirmable

	validates :username, format: { 
					    with: /\A[a-zA-Z0-9\p{Cyrillic}\p{Latin} ]+\z/,
					    message: "only allows letters and numbers" },
					  length: { in: 4..15 }, presence: true

  validates_uniqueness_of :username

  def role?(role)
  	self.role.name == role
  end

	private

  def after_confirmation
    UserMailer.send_welcome_email(self).deliver
  end
end