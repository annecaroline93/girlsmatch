class User < ApplicationRecord
  has_many :student_mentorships, class_name: 'Mentorships', foreign_key: 'student_id'
  has_many :mentor_mentorships, class_name: 'Mentorships', foreign_key: 'mentor_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



end
