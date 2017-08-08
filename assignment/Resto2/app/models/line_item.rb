class LineItem < ApplicationRecord
  belongs_to :items
  belongs_to :cart
end
