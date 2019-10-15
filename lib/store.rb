class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :at_least_carry_mens_or_womens

  def at_least_carry_mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Must carry at least a men's or women's apparel")
      errors.add(:womens_apparel, "Must carry at least a men's or women's apparel" )
    end
  end
end
