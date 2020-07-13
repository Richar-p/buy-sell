class Offer < ApplicationRecord
  has_one_attached :photo
  
  validates :name, :description, :price, presence: true
  
  validates :phone_number, allow_blank: true, numericality: true, length: { :minimum => 10, :maximum => 15 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :postal_code, numericality: true, length: { :minimum => 5, :maximum => 5 }

  validate :minimum_contact

  def minimum_contact
    return true if email.present? || phone_number.present?

    errors.add(:email, 'at least one contact method is required (email or phone number)')
    errors.add(:phone_number, 'at least one contact method  is required (email or phone number)')
  end

  def self.search(search)
    if search
      self.where('name ILIKE ?', "%#{search}%").where(validate?: true)
    else
      self.where(validate?: true)
    end
  end
end
