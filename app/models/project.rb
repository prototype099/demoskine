class Project < ActiveRecord::Base

  attr_accessible :access_token, :archive, :description, :name, :owner_id, :secret

  belongs_to :owner, :class_name => :user 

  before_create { generate_token(:access_token) }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Project.exists?( column => self[column] )
  end

end
