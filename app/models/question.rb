class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers, :dependent => :destroy

   validates :title,
             :presence => true,
             :uniqueness => true,
             :length => {:minimum => 10, :maximum => 120}
           
   validates :body,
             :presence => true,
             :length => {:maximum => 4096}
             
    scope :recent, order("created_at DESC")  
    scope :approved, where("status = ?", "approved")       
    scope :answered, approved.recent.where("answers_count > ?", 0)
    scope :with_no_answer, approved.recent.where("answers_count IS NULL")
    
    # tags to be added
    def to_param
        "#{id}-#{title.parameterize}"
      end
  
end
