meta:
  id: mii
  file-extension:
    - mii
    - mae
    - miigx
    - rcd
  endian: be
seq:
  - id: invalid
    type: b1
  - id: is_girl
    type: b1
  - id: birth_month
    type: b4
  - id: birth_day
    type: b5
  - id: favorite_color
    type: b4
  - id: favorite
    type: b1
  - id: mii_name
    type: str
    size: 20
    encoding: utf-16be
  - id: body_height
    type: u1
  - id: body_weight
    type: u1
  - id: mii_id
    type: mii_id
  - id: mac_address
    type: mac_address
  - id: face_type
    type: b3
  - id: face_color
    type: b3
  - id: facial_feature
    type: b4
  - id: unknown
    type: b3
  - id: mingle
    type: b1
  - id: unknown_2
    type: b1
  - id: downloaded
    type: b1
  - id: hair_type
    type: b7
  - id: hair_color
    type: b3
  - id: hair_flip
    type: b1
  - id: unknown_3
    type: b5
  - id: eyebrow_type
    type: b5
  - id: unknown_4
    type: b1
  - id: eyebrow_rotation
    type: b4
  - id: unknown_5
    type: b6
  - id: eyebrow_color
    type: b3
  - id: eyebrow_size
    type: b4
  - id: eyebrow_vertical
    type: b5
  - id: eyebrow_horizontal
    type: b4
  - id: eye_type
    type: b6
  - id: unknown_6
    type: b2
  - id: eye_rotation
    type: b3
  - id: eye_vertical
    type: b5
  - id: eye_color
    type: b3
  - id: unknown_7
    type: b1
  - id: eye_size
    type: b3
  - id: eye_horizontal
    type: b4
  - id: unknown_8
    type: b5
  - id: nose_type
    type: b4
  - id: nose_size
    type: b4
  - id: nose_vertical
    type: b5
  - id: unknown_9
    type: b3
  - id: mouth_type
    type: b5
  - id: mouth_color
    type: b2
  - id: mouth_size
    type: b4
  - id: mouth_vertical
    type: b5
  - id: glasses_type
    type: b4
  - id: glasses_color
    type: b3
  - id: unknown_10
    type: b1
  - id: glasses_size
    type: b3
  - id: glasses_vertical
    type: b5
  - id: facial_hair_mustache
    type: b2
  - id: facial_hair_beard
    type: b2
  - id: facial_hair_color
    type: b3
  - id: facial_hair_size
    type: b4
  - id: facial_hair_vertical
    type: b5
  - id: mole_enable
    type: b1
  - id: mole_size
    type: b4
  - id: mole_vertical
    type: b5
  - id: mole_horizontal
    type: b5
  - id: unknown_11
    type: b1
  - id: creator_name
    type: str
    size: 20
    encoding: utf-16be
    
types:
  mac_address:
    seq:
      - id: checksum
        type: u1
        doc: The checksum is found by getting the sum of the first 3 bytes of the mac address, then modulo by 256.
      - id: remaining_bytes
        type: u1
        repeat: expr
        repeat-expr: 3
  mii_id:
    seq:
      - id: mii_info
        type: u1
        doc: According to HEYimHeroic, the first char is just information about the Mii. The second is apart of the timestamp.
      - id: timestamp
        type: u1
        repeat: expr
        repeat-expr: 3
        doc: According to HEYimHeroic, these bytes are a timestamp of sorts, that can return the date it was created.
