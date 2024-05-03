# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table

company = Company.new 

company["name"] = "Apple"
company["city"] = "Cu"
company["state"] = "CA"
company["url"] = "http://apple.com"
# save the new data
company.save
p company

puts "There are #{Company.all.count} companies"

# run the data: rails runner xxxxx

# adding a new entry
company = Company.new
company["name"] = "Amazon"
company["city"] = "Seattle"
company["state"] = "WA"
# save the new entry
company.save
puts "There are #{Company.all.count} companies"


# 3. query companies table to find all row with California company

all_companies = Company.all
# p all_companies

cal_companies = Company.where({"state" => "CA"})
p cal_companies
puts cal_companies.count

# 4. query companies table to find single row for Apple

# use below, it return an array (a baby table)
apple = Company.where({"name" => "Apple"})
# therefore, use find by to get only a hash
apple = Company.find_by({"name" => "Apple"})

# 5. read a row's column value

p apple['name']
p apple["url"]

# 6. update a row's column value

amazon = Company.find_by({"name" => "Amazon"})

amazon["url"] = "https://amazon.com"
# remember to save
amazon.save
p amazon

# 7. delete a row

amazon.destroy

puts "There are #{Company.all.count} companies"