module NsdCookbook
  module Zone
    @@zone_data = {}

    def add_record(dns_record)
      zone = dns_record[:zone]
      if @@zone_data.key?(zone)
        @@zone_data[zone] << dns_record
      else
        @@zone_data[zone] = [dns_record]
      end
    end

    def zones
      @@zone_data.keys
    end

    def zone_records(zone_name)
      @@zone_data[zone_name]
    end
  end
end
