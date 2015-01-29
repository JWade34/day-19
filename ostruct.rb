require 'csv'
require 'ostruct'

class ImportsCSV
  def import
    data = []
    
    CSV.foreach('data.csv', headers: true) do |line|

      hashie = line.to_hash
      hashie.keys.each do |key|
        hashie[key.downcase] = hashie[key]
        hashie.delete(key)
      end

      data << OpenStruct.new(hashie)
    end
    data

  end
end

p ImportsCSV.new.import
