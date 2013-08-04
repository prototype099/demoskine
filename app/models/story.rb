class Story < ActiveRecord::Base

  attr_accessible :content, :owner_id, :points, :project_id, :requester_id, :status, :tracker_id

  belongs_to :project
  belongs_to :owner, :class_name => :user
  belongs_to :requester, :class_name => :user
  #belongs_to :trackter

  STATE_OF = {
    :ICEBOX => 0,
    :READY => 10,
    :REJECTED => 15,
    :DOING => 20,
    :DONE => 30,
    :FINISHED => 40,
  }


  # class methods
  class << self

    def list_of(project_id)
      stories = Story.where("project_id = ?", project_id)
    end
    
  end

end
