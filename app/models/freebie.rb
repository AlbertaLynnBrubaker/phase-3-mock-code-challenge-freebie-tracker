class Freebie < ActiveRecord::Base
  belongs_to :dev
  belongs_to :company

  def print_details
    
  end
end
