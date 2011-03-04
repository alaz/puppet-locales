/*

==Definition: locales::default
Persist locale defaults (e.g. LANG=C)

*$namevar* - defaults string

*/
define locales::default() {
  exec { "update-locale" :
    command => "update-locale ${name}",
    require => Exec["locale-gen"],
    refreshonly => true,
  }
}
