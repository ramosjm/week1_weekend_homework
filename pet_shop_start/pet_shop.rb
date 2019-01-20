def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash)
    new_cash = total_cash(pet_shop) + cash
    pet_shop[:admin][:total_cash] = new_cash
end

def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,pets_sold)
    new_number_of_pets = pets_sold(pet_shop) + pets_sold
    pet_shop[:admin][:pets_sold] = new_number_of_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop,any_breed)
  pet_breed =[]
  pets = pet_shop[:pets]
  for type_of_breed in pets
      for breed in type_of_breed.values
        if breed == any_breed
          pet_breed << breed
        end
      end
  end
  if (pet_breed.count>1)
  #  p "Pet Found"
  else(pet_breed.count<1)
  #  p "Pet not found"
  end
  return pet_breed
end

def find_pet_by_name(pet_shop,name)
  pet_list = pet_shop[:pets]
  for each_pet in pet_list
     for x in each_pet.values
       if x == name
         return each_pet
       end
     end
  end
  return nil
end

def remove_pet_by_name(pet_shop,pet_name)
  pet_to_remove = find_pet_by_name(pet_shop,pet_name)
  pet_shop[:pets].delete(pet_to_remove)

end

def add_pet_to_stock(pet_shop,new_pet)
  pet_shop[:pets]<< new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  new_cash = customer[:cash] - cash
  customer[:cash] = new_cash
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer,new_pet)
  new_pet_to_customer = customer[:pets]
  new_pet_to_customer << new_pet
end

def customer_can_afford_pet(customer,new_pet)
   customer_cash = customer_cash(customer)
  if customer_cash < new_pet[:price]
    return false
  else
    return true
  end
end


# def sell_pet_to_customer(pet_shop,pet,customer)
#   add_pet_to_customer(customer,pet)
#   remove_pet_by_name(pet_shop,pet)
#   pet_shop[:pets].count
#   total_pets_in_stock = stock_count(pet_shop)
#   new_total_pets_in_stock = stock_count(pet_shop)
#   pets_sold = total_pets_in_stock - new_total_pets_in_stock
#   increase_pets_sold(pet_shop,1)
#
#   customer_cash(customer)
#   total_cash(pet_shop)
#
# end
