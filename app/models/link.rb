class Link < ApplicationRecord
  validates :slug, presence: true, uniqueness: true
  validates :url, presence: true
  validates :url, url: true
  has_many :redirect_events

  def generate_unique_slug
    unique = false

    until unique
      slug = 1.word
      if Link.where(slug: slug).none?
        unique = true
      end
    end

    self.slug = slug
  end
end
