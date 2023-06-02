class Friend < ApplicationRecord
  has_one_attached :photo

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  GENDER_OPTIONS = ["Male", "Female", "Non-Binary", "Prefer not to say"]
  LANGUAGE_OPTIONS = ["English", "Japanese", "French", "Italian", "Spanish", "Cantonese", "Russian", "Nepali", "Norwegian", "Filipino", "Tamil"]

  validates :location, presence: true
  validates :price, presence: true, numericality: { in: (10..45), only_integer: true }
  validates :name, presence: true
  validates :age, presence: true, numericality: { in: (18..100), only_integer: true }
  validates :gender, presence: true, inclusion: { in: GENDER_OPTIONS }
  validates :language, presence: true, inclusion: { in: LANGUAGE_OPTIONS }
  validates :description, presence: true, length: { minimum: 5, maximum: 1000 }
  # validates :photo, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model

  pg_search_scope :search_text_fields,
  against: [ :language, :gender, :name, :location ],
  using: {
    tsearch: { prefix: true }
  }
end
