MYSQL -u root -p

create database peminjaman_buku;

show databases;

use peminjaman_buku;

create table peminjam(
    nim int(12) not null primary key,
    nama varchar(25) not null,
    id_buku int(6) not null
);

create table buku(
    id_buku int(6) not null primary key,
    nama_buku varchar not null,
);

ALTER TABLE buku ADD FOREIGN KEY id_buku REFERENCE peminjam(id_buku);

insert into buku (id_buku,nama_buku)
values ('112233','Tenggelamnya Kapal Van Der Sar'),
('113344','DILAN 2069'),
('112333','Komet'),
('112234','Makan Bang')
;

