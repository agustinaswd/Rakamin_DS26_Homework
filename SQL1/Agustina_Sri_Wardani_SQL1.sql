--soal 1
select distinct
	kota
from 
	rakamin_customer_address;

--soal 2
select*
from 
	rakamin_order
order by 
	tanggal_pembelian desc
limit 10;

--soal 3
select
	id_pelanggan,
	nama,
	email,
	telepon,
	umur,
	bulan_lahir,
	tanggal_registrasi,
	konfirmasi_telepon,
	pengguna_aktif
from 
	rakamin_customer
where 
	penipu = 1;

--soal 4
select
	id_order,
	id_pelanggan,
	id_merchant,
	tanggal_pembelian,
	kuantitas,
	harga,
	ppn
from
	rakamin_order
where 
	metode_bayar = 'shopeepay'
order by 
	harga desc;

--soal 5
create table 
	rakamin_customer_address_tangerang as
select 
	id_alamat,
	id_pelanggan,
	alamat,
	kota,
	provinsi
from
	rakamin_customer_address
where lower(kota) = 'tangerang';

--soal 6
update 
	rakamin_customer_address_tangerang
set 
	provinsi = 'Banten'
where id_alamat is not null;

select*
from 
	rakamin_customer_address_tangerang;

update 
	rakamin_customer_address_tangerang
set 
	alamat = 'Karawaci'
where id_pelanggan =10;

select*
from 
	rakamin_customer_address_tangerang;

--soal 7
insert into 
	rakamin_customer_address_tangerang 
values (101, 70, 'Ciledug', 'Tangerang', 'Banten');

select*
from 
	rakamin_customer_address_tangerang;

--soal 8
delete from 
	rakamin_customer_address_tangerang
where id_pelanggan = 54;

select*
from 
	rakamin_customer_address_tangerang;







