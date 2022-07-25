class Contactu < ApplicationRecord
  validates :name ,:presence => true
  validates :email ,{
    :presence => true ,
    :format =>{:with=> /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+/}
  }

end
