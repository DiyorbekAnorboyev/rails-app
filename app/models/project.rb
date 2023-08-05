class Project < ApplicationRecord
  belongs_to :user
  has_many :project_admins, dependent: :destroy
  def owned_by?(user)
    self.user == user
  end
  
end

