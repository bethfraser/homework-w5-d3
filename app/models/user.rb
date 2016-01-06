class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  scope :author, -> { where(role: "author") | where(role: "admin") }

  validates :name, presence: true

  has_many :articles
  has_many :comments, dependent: :destroy
end
