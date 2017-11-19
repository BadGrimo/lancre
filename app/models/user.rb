class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username,
    presence: true,
    uniqueness: { :case_sensitive => false },
    format: { with: /^[a-zA-Z0-9_\.]*$/,  :multiline => true }



  protected
  def confirmation_required?
    false
  end
end
