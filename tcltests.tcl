puts "The version is $tcl_version"
puts "The patchlevel is [info patchlevel]"
puts "pkgPath is set to $tcl_pkgPath"
puts "autopath is set to $auto_path"
clock scan 1752-09-02 -format %Y-%m-%d -locale en_US
package require itcl
package require sqlite3
package require tdbc
package require tdbc::mysql
package require tdbc::odbc
package require tdbc::postgres
package require sqlite3
package require Thread
package require tls
