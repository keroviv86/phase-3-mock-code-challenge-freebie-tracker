class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def self.oldest_company
        self.pluck(:founding_year).min
        # self.all.order(:founding_year).first
    end 

    def give_freebie(dev, item_name, value)
        Freebie.create(item_name:item_name, dev:dev, company:self, value:value)
        Freebie.create(item_name:item_name, dev_id:dev.id, company:self, value:value)
    end

end
