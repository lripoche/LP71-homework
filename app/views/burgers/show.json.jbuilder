json.partial! "burgers/burger", burger: @burger

#Add product nutriments to product's JSON page 
json.nutriments do
    json.array! @burger.nutriments  
  end