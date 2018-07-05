class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_projects
  belongs_to :organization
  has_many :projects, through: :user_projects

  validates :email, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
 
  rails_admin do
 
     list do
         field :id
         field :first_name
         field :last_name
         field :email
     field :organization

     end

     edit do
         field :first_name
         field :last_name
         field :email
         field :password
         field :password_confirmation
     field :organization

     end
 end

end
