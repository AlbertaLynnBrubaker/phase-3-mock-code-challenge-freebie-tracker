class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    received = self.freebies.where(item_name: "#{item_name}")
    received.exists? ? true : false
  end

  def give_away(dev, freebie)
    dev_has_freebie = self.received_one?(freebie.item_name)
    if(dev_has_freebie)
      freebie.update(dev_id: dev.id) 
      "#{self.name} has given away a #{freebie.item_name} to #{dev.name}"
    else
      "#{self.name} doesn't have a #{freebie.item_name}"
    end
  end
end
