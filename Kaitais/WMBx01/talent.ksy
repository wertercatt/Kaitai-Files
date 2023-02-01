meta:
  id: talent
  application: My Pokemon Ranch
  file-extension:
    - dec
    - dat
  endian: be
  imports:
    - rsd
seq:
  - id: unknown_header
    size: 8
  - id: nineteen_zeros
    size: 19
  - id: wanted_pokemon
    type: u1
    doc: untested!
  - id: two_bytes
    size: 2
  - id: celebrity_mii
    type: rsd
  - id: celebrity_pokemon
    size: 136
    doc: encrypted pk4
  - id: eight_bytes
    size: 8
  - id: three_zeros
    size: 3
  - id: five_bytes
    size: 5
  - id: celebrity_dialog
    size: 910
    type: str
    encoding: utf-16be
  - id: one_thousand_one_hundred_and_twenty_zeroes
    size: 1120
  - id: twelve_bytes
    size: 12
  - id: six_zeroes
    size: 6
  - id: two_more_bytes
    size: 2
  - id: three_more_zeros
    size: 3
  - id: one_byte
    size: 1
  - id: eight_zeros
    size: 8
  - id: four_bytes
    size: 4
  - id: four_thousand_two_hundred_and_fourty_eight_zeros
    size: 4248