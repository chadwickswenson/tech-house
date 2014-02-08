# == Schema Information
#
# Table name: applicants
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  employer   :string(255)
#  website    :string(255)
#  about      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Applicant < ActiveRecord::Base
before_save { email.downcase! }
    validates :name, presence: true, length: {maximum: 75}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence:   true,
                   format:     { with: VALID_EMAIL_REGEX },
                   uniqueness: { case_sensitive: false }
    validates :employer, presence: true, length: {maximum: 50}
    validates :website, presence: true, length: { maximum: 250 }
    validates :about, presence: true
end
