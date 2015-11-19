require 'merge_plist'

plist1 = "<dict><key>name</key><string>june</string></dict>"
plist2 = "<dict><key>group</key><string>hye</string></dict>"
expected = {
  "name" => "june",
  "group" => "hye" }

p MergePlist::merge_raw(plist1, plist2) == expected