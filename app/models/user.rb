class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable

  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name,
                  :gender, :avatar_path, :role, :provider, :uid

  def admin?
    self.role.eql? 'Admin'
  end

  def user?
    self.role.eql? 'User'
  end

  def promote!
    self.update_attributes(role: 'Admin')
  end

  def demote!
    self.update_attributes(role: 'User')
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
