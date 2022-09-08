class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Creates a custom scope by defining a new method
  def self.angular
    where(subtitle: "Angular")
  end

  # Creates a custom scope with the scope keyword
  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }
end
