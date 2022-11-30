class Role < ActiveRecord::Base
  
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        audition = self.auditions.find_by(hired:true)
        if audition 
            audition
        else 
            "no actor has been hired for this role"
        end
    end


    def understudy
        audition = self.auditions.where(hired:true).second
        if audition
            audition
        else
            "no actor has been hired for understudy for this role"
        end
    end

end
