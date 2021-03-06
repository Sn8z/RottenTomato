class User < ActiveRecord::Base
    validates :username, presence: true,
                         format: { with: /\A[a-zA-Z0-9]+\Z/, message: 'can only contain letters and numbers' },
                         length: { in: 4..16, message: 'must contain between 4 and 16 characters' },
                         uniqueness: true
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    def is_admin?
      self.role.eql?("Admin")
    end
end
