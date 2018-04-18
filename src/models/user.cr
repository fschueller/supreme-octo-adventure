class User < Granite::ORM::Base
  adapter sqlite
  table_name users


  # id : Int64 primary key is created for you
  field name : String
  field email : String
  timestamps
end
