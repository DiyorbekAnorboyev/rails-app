class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :projects, dependent: :destroy
         has_many :project_admins, dependent: :destroy
         
end
