require 'csv'

class ImportsCSV
  def import
    data = []
    CSV.foreach('data.csv', headers: true) do |line|
      contact = Contact.new

      # 1. map the data column to our attr_accessor name
      #    -- "Name".downcase
      # 2. call the attr_accessor and set the value

      # attrs = ["Name", "Company", "Address", "State", "Email", "City", "Phone"]

      line.to_hash.keys.each do |field|
        contact.send("#{field.downcase}=", line.to_hash[field])
      end


      # contact.name = line.to_hash["Name"]
      # contact.company = line.to_hash["Company"]
      # contact.address = line.to_hash["Address"]
      # contact.state = line.to_hash["State"]
      # contact.email = line.to_hash["Email"]
      # contact.city = line.to_hash["City"]
      # contact.phone = line.to_hash["Phone"]
      data << contact
    end
    data

  end
end

class Contact

  attr_accessor :name, :company, :address, :state, :email, :city, :phone

  #
  # def name
  #   @name
  # end
  #
  # def name=(other)
  #   @name = other
  # end
end


p ImportsCSV.new.import
