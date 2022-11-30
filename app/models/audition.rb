class Audition < ActiveRecord::Base
  belongs_to :role

    def call_back
        self.update(hired: true)
    end


end