class User < ApplicationRecord
  acts_as_token_authenticatable
  validates :username, presence: :true, uniqueness: { case_sensitive: false }
  has_many :projects
  has_many :tasks, foreign_key: 'executor_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
