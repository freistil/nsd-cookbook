class ZoneResourceRecord
  def initialize(record)
    @record = record
  end

  def bind9entry
    case type
    when "A"
      "%-20s IN A     %s".% [name, ip_address]
    when "MX"
      "%-20s IN MX    %s %s".% ['', preference, name]
    when "CNAME"
      "%-20s IN CNAME %s".% [name, real_name]
    end
  end

  private

  def name
    @record[:name]
  end

  def type
    @record[:type]
  end

  def preference
    @record[:preference] || 1
  end

  def ip_address
    @record[:ip_address]
  end

  def real_name
    @record[:real_name]
  end
end
