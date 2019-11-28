CREATE TABLE turist (
  turistid serial primary key,
  navn text not null,
  epost text,
  overnattingid int references overnatting (overnattingid)
);
CREATE TABLE hotell (
  hotellid serial primary key,
  navn text not null,
  epost text,
  tlf text not null,
  overnattingid int references overnatting (overnattingid)
);
CREATE TABLE overnatting (
  overnattingid serial primary key,
  rom text not null,
  pris text not null,
  betalt text not null
);