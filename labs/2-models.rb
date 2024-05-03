# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesppl.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file



# 2. insert 1-2 rows in salespeople table.

salesppl = Salesppl.new
salesppl["first_name"] = "Ben"
salesppl["last_name"] = "Block"

salesppl.save

salesppl = Salesppl.new
salesppl["first_name"] = "Brian"
salesppl["last_name"] = "Eng"

salesppl.save

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

puts "Salespeople: #{Salesppl.all.count}"

# 4. modify/update column data for a row in the salespeople table.

ben = Salesppl.find_by({"first_name" => "Ben"}, "last_name" =>"Block")
ben["email"] = "ben.block@company.com"
ben.save
# p ben

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

# define table
salespeople = Salesppl.all

# find hashes/rows
for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
end
