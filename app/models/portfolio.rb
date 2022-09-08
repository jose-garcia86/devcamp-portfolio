class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Creates a custom scope by defining a new method
  def self.angular
    where(subtitle: "Angular")
  end

  # Creates a custom scope with the scope keyword
  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }

  # Set default values
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://placehold.co/600x400/000000/FFF"
    self.thumb_image ||= "https://placehold.co/350x200/000000/FFF"
  end
end