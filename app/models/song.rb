class Song < ApplicationRecord
require 'csv'

  def self.to_csv
    CSV.generate(headers: true) do |f|
      f << all.first.attributes.map { |a, v| a }
      all.each do |t|
        f << t.attributes.map { |a, v| v}
      end
    end
  end
end
