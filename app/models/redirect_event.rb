class RedirectEvent < ApplicationRecord
  validates :link_id, presence: true
  belongs_to :link
end
