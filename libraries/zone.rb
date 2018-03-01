module NsdCookbook
  module Zone
    @@zone_data = {}

    def add_record(dns_record)
      zone = dns_record[:zone]
      resource_record = ZoneResourceRecord.new(dns_record)
      if @@zone_data.key?(zone)
        @@zone_data[zone] << resource_record
      else
        @@zone_data[zone] = [resource_record]
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
