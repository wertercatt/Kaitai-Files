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
  - id: nineteenzeros
    size: 19
  - id: wanted_pokemon
    type: u1
    doc: untested!
  - id: twobytes
    size: 2
  - id: celebrity_mii
    type: rsd
  - id: celebrity_pokemon
    size: 136
    doc: encrypted pk4
  - id: eightbytes
    size: 8
  - id: threezeros
    size: 3
  - id: fivebytes
    size: 5
  - id: celebrity_dialog
    size: 910
    type: str
    encoding: utf-16be
  - id: onethousandonehundredandtwentyzeroes
    size: 1120