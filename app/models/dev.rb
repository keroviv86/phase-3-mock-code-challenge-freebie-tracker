class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        self.freebies.pluck(:item_name).include?(item_name)
    #     self.freebies.find_by({item_name: item_name}):true ? false
    end

    def give_away(dev,freebie)
        # freebie dev_id is equal to self dev_id
        if freebie.dev_id = self.id
            freebie.dev_id = dev.id
            freebie.save
        end
        # or
        # if self.received_one?(freebie.item_name)
        #     freebie.update({dev_id: friend_dev.id})
        # else
        #     "That don belong to you!!!"
        # end

        
    end
end
