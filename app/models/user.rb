class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :comments

  # フォロー機能のアソシエーション
  has_many :relationships, foreign_key: 'user_id', dependent: :destroy
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id', dependent: :destroy
  has_many :followers, through: :reverse_of_relationships, source: :user

    def follow(other_user)
      relationships.find_or_create_by(follow_id: other_user.id) unless self == other_user
    end

    def unfollow(other_user)
      relationship = relationships.find_by(follow_id: other_user.id)
      relationship.destroy if relationship
    end

    def following?(other_user)
      followings.include?(other_user)
    end

  with_options presence: true do
    validates :nickname
  end
  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください'

  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end
end
