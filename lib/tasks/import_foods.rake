require 'csv'

namespace :fdc do
  desc "Import fdc foods"
  task import: :environment do
    fdc_dir = File.join(Dir.pwd, "db", "fdc")

    measure_unit_csv_path = File.join(fdc_dir, "measure_unit.csv")

    measure_units = CSV.read(measure_unit_csv_path, headers: true).map(&:to_h)

    pp MeasureUnit.import(measure_units, validate: false, on_duplicate_key_update: %i[name])
  end
end
