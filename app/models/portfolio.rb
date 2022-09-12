class Portfolio < ApplicationRecord
  include Placeholder
  has_many :technologies
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
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end
end