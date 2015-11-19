require 'deep_merge'
require 'plist'

module MergePlist
  def self.ensure_plist obj
    if obj.class == String
      return Plist::parse_xml obj
    elsif obj.class == Hash
      return obj
    end  

    raise ArgumentError.new("invalid argument #{obj}")
  end

  def self.merge *targets
    return merge_raw(*targets).to_plist
  end
  def self.merge_raw *targets
    if targets.count == 2
      return ensure_plist(targets[0])
        .deep_merge(ensure_plist(targets[1]))
    else
      return merge_raw(merge_raw(targets[0], targets[1]), *targets.slice(2..-1))
    end
  end
end