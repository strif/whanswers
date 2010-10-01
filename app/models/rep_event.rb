class RepEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer, :foreign_key => 'event_id'
  

  before_save :change_answer_votes 
  
  # this is the code that changes the vote count of the answer
  def change_answer_votes
    if  self.event_type == "down"
      @answer = Answer.find(self.event_id)
      @answer.decrement!(:votes)
    else self.event_type == "up"
      @answer = Answer.find(self.event_id)
      @answer.increment!(:votes)  
    end
  end  

  
  
  
end
