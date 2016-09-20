class UsersLoyalty < ApplicationLoyalty
  
 def update?
    user.role == 'admin' || user.id == record.id
  end


end
