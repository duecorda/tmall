cny = {
  :priority => 100,
  :iso_code => "CNY",
  :name => "Chinese Renminbi Yuan",
  :symbol => "元",
  :alternate_symbols => ["CN¥", "元", "CN元"],
  :subunit => "Fen",
  :subunit_to_unit => 100,
  :symbol_first => true,
  :html_entity => "元",
  :decimal_mark => ".",
  :thousands_separator => ",",
  :iso_numeric => "156",
  :smallest_denomination => 1
}

Money::Currency.register(cny)
