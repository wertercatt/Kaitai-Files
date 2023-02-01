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
  - id: threebytes
    size: 3
  - id: celebrity_mii
    type : rsd