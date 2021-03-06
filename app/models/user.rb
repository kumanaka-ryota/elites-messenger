class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
#--************************** 下記を追加 *************************
  # サムネイル画像にCarrierWaveで作成したUserThumbnailUploaderを使用
  mount_uploader :thumbnail, UserThumbnailUploader
#--***************************************************************

# --************************* 下記を追加 *************************
  # バリデーションを設定
  validates :name, presence: true
  validates :agreement, presence: true, acceptance: {accept: true}
# --**************************************************************
end
