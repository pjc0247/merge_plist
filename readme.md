merge_plist
====

__plist1__
```plist
<dict>
  <key>name</name>
  <string>llama</string>
</dict>
```
__plist2__
```plist
<dict>
  <key>nickname</name>
  <string>brett</string>
</dict>
```
__merged result__
```plist
<dict>
  <key>name</name>
  <string>llama</string>
  <key>nickname</name>
  <string>brett</string>
</dict>
```

Gem
----
```
gem install merge_plist
```

Usage (Ruby)
----
```ruby
require 'merge_plist'

merged = MergePlist::merge(
  File.read("a.plist"),
  File.read("b.plist"),
  File.read("c.plist"))
```

Usage (Shell)
----
```
merge_plist a.plist b.plist c.plist
```
