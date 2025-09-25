////////////////////////////////////////////////////////////////////////////////
//                                README                                      //
////////////////////////////////////////////////////////////////////////////////
DMS-ACH Legacies below

Version 1.0.6.7 30/12/2020
!Penerimaan Pembelian kolom Total pada Grid dihilangkan

Version 1.0.6.6 17/10/2020
! alat bayar piutang (pembayaran bank,giro,retur,panjar) tidak dapat digunakan lebih dari 1 kali pelunasan
! alat bayar hutang (pembayaran bank,giro,retur,panjar) tidak dapat digunakan lebih dari 1 kali pelunasan

Version 1.0.6.5 17/10/2020
! Penambahan kolom Panjar pada laporan Saldo Hutang Per Supplier
! Perbaikan nilai_digunakan alat pembayaran hutang (pembayaran bank,giro,retur,panjar) saat digunakan pada lebih dari 1 pelunasan
! Hutang pembayaran bank,giro,retur,panjar sekarang dapat memilih lebih dari 1 piutang sekali pembayaran

version 1.0.6.4 03/10/2020
! perbaikan bug tampilan jumlah pelunasan per alat bayar (field nilai_per_pelunasan) pada hutang dan piutang
! perbaikan bug pelunasan hutang transfer bank dapat melewati batas karena nilai digunakan alat bayar selalu dianggap 0

version 1.0.6.3 ++ 24/09/2020
! perbaikan bug pada pembelian, saat memasukkan harga kecil, harga besar dan total tidak berubah

version 1.0.6.3 + 23/09/2020
! perbaikan bug pada print Penjualan diskon tidak tercetak

version 1.0.6.3 21/09/2020
! Jika Pembelian sudah dimasukkan harga, maka qty tidak dapat diubah dari penerimaan pembelian
! Pembelian dapat membuat harga menjadi 0

version 1.0.6.2 21/09/2020
! Pembelian hanya dapat melakukan update terhadap harga pembelian
+ Penambahan flag Aktif pada Komposisi
+ Penambahan modul Penerimaan Pembelian (tambah, update, delete tanpa input harga untuk pembelian)

version 1.0.6.1 + 02/09/2020
+ penambahan opsi argument multiline agar laporan mengenal karakter NewLine ('\n')

version 1.0.6 + 18/07/2020
! jendela program tidak menutupi taskbar windows

version 1.0.6 27/06/2020
! menu laporan saldo piutang per customer per salesman disembunyikan
! penambahan parameter saldo awal per tanggal pada laporan saldo hutang per supplier
! penambahan parameter saldo awal per tanggal pada laporan saldo piutang per customer

version 1.0.5 + 19/06/2020
!pada saat closing alat bayar panjar dan transfer bank yang digunakan di bulan di atas bulan closing tetap dibawa ke periode selanjutnya

version 1.0.5 11/06/2020
! penambahan validasi untuk delete pada master, komposisi, produksi, dan piutang
! validasi ditambahkan untuk semua transaksi agar tidak bisa dibuat dibawah periode berjalan
! rekalkulasi hpp dikunci sampai akhir bulan tanggal periode berjalan
! rekalkulasi hpp per tanggal, hpp pemusnahan & penyesuaian diisi dengan hpp rata-rata (tidak ada gradasi)

version 1.0.4 06/06/2020
! reformasi fitur rekalkulasi hpp per tanggal (server memroses langsung query rekalkulasi)

version 1.0.3 04/04/2020
! perbaikan rekalkulasi hpp per tanggal

version 1.0.2 31/03/2020
!  penambahan fitur closing

version 1.0.1 04/04/2019
+ perbaikan pada grid hutang dan piutang


version 1.0.1 04/04/2019
+ penambahan laporan produksi

Version 1.0.0 25/03/2019
! perbaikan gridload

Version 1.0.0.14 02/12/2018
! penyelerasan format laporan
! perbaikan bug parameter tanggal report berganti menjadi default saat parameter disubmit
! perbaikan bug laporan kartu stock error saat parameter opsi kosong, sekarang memiliki nilai default

Version 1.0.0.13 15/11/2018
! perbaikan bug laporan sisa stok per gudang
! perbaikan rekalkulasi stock

Version 1.0.0.12 5/11/2018
! perbaikan bug pada pelunasan hutang & piutang (hapus dn)
+ penambahan fitur menghitung hpp pemusnahan & penyesuaian ketika dilakukan rekalkulasi hpp
- penghapusan fitur menghitung hpp pada pemusnahan di form
+ Penambahan fitur `F2` untuk mendapatkan kode terakhir + 1 pada form hutang, piutang, piutang_bank, dan hutang_bank
+ Laporan Pemusnahan (3) Penyesuaian (3) dan Giro/Transfer (4)
! Laporan History Perincian semua Field Qty (beserta kemasan langsung) dengan kemasan diganti menjadi jumlah Qty Terkecil dan Satuan (2 kolom) dan qty nya disummary
! Semua Laporan yang memiliki parameter gudang menjadi hanya menampilkan nama gudang pada input user
+ Pelunasan Piutang dan Hutang, Lookup Hutang/ Piutang hanya menampilkan Hutang/Piutang yang bersisa
+ Penambahan view total Pada Pemusnahan dan Penyesuaian
- penghapusan kolom pelunasan terakhir pada view piutang dan hutang

Version 1.0.0.11 3/11/2018
! calcCurQty di FormBarang
! recalcHPP jika qty_awal + qty_pembelian = 0, return hpp_awal 
+ FormDetailHutang, FormDetailHutangcash, FormDetailPiutang, FormDetailPiutangCash ditambah nilai piutang, nama customer dan tanggal


Version 1.0.0.10 27/10/2018
+ Setiap Report menambahkan header profile perusahaan
! hpp awal barang menjadi tidak dikunci
+ penambahan fitur hitung hpp pemusnahan
+ perbaikan error edit mutasi
+ database detail_pemusnahan +field(harga_b,harga_k)

Version 1.0.0.9 25/10/2018
+ Setiap Report menambahkan header profile perusahaan
! hpp awal barang menjadi tidak dikunci
? Underway - popup hitung hpp pemusnahan
? Underway - error edit mutasi

Version 1.0.0.7 25/10/2018
+ menambah kode Report menghandle profile perusahaan (web dan email)

Version 1.0.0.6 24/10/2018
! perubahan filter supplier terhadap barang pada modul pembelian dan retur pembelian
! perbaikan bug pada pembelian (serta retur pembelian) dimana kode supplier tidak terganti saat diubah
! perbaikan komunikasi database pada penjualan dan retur penjualan agar dapat mengubah customer dan salesman
! perbaikan pemberian warna pada form grid piutang dan form grid hutang 
+ penambahan field 'pemakaian' pada modul pemusnahan (database,formmaster,formnormal)
! perubahan tampilan hutang pelunasan
! perubahan report voucher pembayaran & voucher penerimaan
+ menambah kode untuk menghandle profile perusahaan (web dan email)

Version 1.0.0.5  22/05/2018
+ penambahan surat pengantar barang pada penjualan
! perbaikan bug gudang pada detail penyesuaian
! perbaikan bug hpp,harga beli bruto dan haraga beli netto pada master barang
! perubahan font pada jendela grid

Version 1.0.0.4
- penghapusan validasi margin pada penjualan

Version 1.0.0.3
+ penambahan shortcut f6 pada satuan besar kemasan untuk kemasan satuan

Version 1.0.0.2
! perbaikan bug harga besar/kecil pada penjualan
! perbaikan bug pada tampilan print faktur penjualan dan pembelian
! perbaikan bug pada pelunasan hutang cn & dn fungsi otorisasi dan batal otorisasi
! perbaikan bug pada pelunasan hutang & piutang tampilan cn & dn
! perbaikan bug pada detail pelunasan hutang & piutang validasi pada cn & dn

Version 1.0.0.1
! perubahan pada faktur penjualan
! perbaikan bug penambahan item pada penyesuaian
! perubahan lebar kode barang (20)

version 0.1.0.0
  Release Version

CP : programmer@neurosoft.co.id

Neurosoft © 2018