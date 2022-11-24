# counter_7
## [Tugas 7](#Tugas-7)
## [Tugas 8](#Tugas-8)
## [Tugas 9](#Tugas-9)

## Nama  : Teuku Gevin Taufan
## NPM   : 2106750194
## Kelas : PBP F
## Asdos : DRY

## Tugas 7
### Stateless Widget vs Statefull Widget
Stateless widget ini bersifat statis, jadi tidak akan berubah-ubah widgetnya sampai akhir walaupun ada user action
dan statefull widget ini bersifat dinamis, jadi widgetnya dapat berubah-ubah berdasarkan user action.

### Widget-widget yang digunakan
- ```MaterialApp```, sebagai komponen utama atau top-level widget
- ```Scaffold```, sebagai kontainer dasar, yang memiliki beberapa elemen seperti ```AppBar``` dan ```floatingActionButton```
- ```AppBar```, widget yang berada di paling atas, biasa digunakan untuk menaruh menu
- ```Center```, agar widget yang kita buat berada di tengah
- ```Column```, layout untuk menyusun widget di dalammnya secara vertikal
- ```Row```, layout untuk menyusun widget di dalammnya secara horizontal
- ```Text```, untuk membuat teks
- ```TextStyle```, mengatur style dari widget ```Text```
- ```Container```, membungkus widget lain untuk mengatur margin dan padding widget tersebut
- ```FloatingActionButton```, menghasilkan tombol berbentuk bulat yang mengambang (selalu berada di depan layar), dapat dimasukkan fungsi pada tombol ketika ditekan
- ```Icon```, membuat icon untuk ```FloatingActionButton```

### setState()
Fungsi ini berguna untuk mererun build method yang berada dibawahnya, jadi jika ada user action maka fungsi ini sangat berguna untuk mererun tampilan karena ada variabel berubah

### const vs final
Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi 
pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const 
sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi

### Checklist Tugas 7
- membuat appnya dengan ```flutter create counter_7```
- mengubah title menjadi Program Counter 
- menambahkan void _decrementCounter() dan  void _incrementCounter()
- di widget build menambahkan di dalam children: <Widget> seperti di main.dart untuk genap ganjil dan warnanya dan hasil counter
- di widget build juga menambahkan di dalam floatingActionButton seperti di main.dart untuk event increment dan decrement berdasarkan icon(+ increment, - decrement)

## Tugas 8
#### Navigator.push dan Navigator.pushReplacement
```Navigator.push``` akan melakukan push, sehingga halaman sebelumnya tepat berada di bawah halaman saat ini
```Navigator.pushReplacement``` akan melakukan push halaman lalu menghapus (pop) halaman sebelumnya, sehingga stack tidak akan penuh.

#### Widget-widget yang Digunakan
-   ```Drawer```, menampilkan dan menyembunyikan *sidebar*
-   ```Navigator```, melakukaan routing, mengatur halaman yang akan ditampilkan
-   ```Form```, membuat formulir yang dapat menerima masukan user
-   ```TextFormField```, menerima input teks di `Form` berupa String
-   ```InputDecoration```, mempercantik `TextFormField`
-   ```DropDownButton```, membuat input *dropdown*
-   ```DropDownMenuItem```, membuat daftar pilihan di *dropdown*
-   ```ListTile```, seperti card, terdiri dari 3 baris teks dan bisa ditambahkan icon

#### Jenis Event pada Flutter
-   ```onChanged```
-   ```onPressed```
-   ```onSaved```

#### Cara Kerja Navigator
`Navigator` mengganti halaman dengan konsep stack, dimana halaman teratas pada stack lah yang akan ditampilkan. Sama seperti strukdur data stack, navigator memiliki method push dan pop untuk mengganti halaman

#### Implementasi tugas 8
1. Membuat widget `Drawer` dan menerapkan routing di dalamnya mengguanakan `Navigator`  
2. Menambahkan 3 file dart, 2 akan digunakan untuk routing yaitu, halaman form dan halaman result, satu digunakan untuk drawer
3. Membuat halaman form yang berisi input judul dan nominal budget berupa widget `TextFormField`, dan input jenis budget berupa widget `DropDownButton`  
4. Membuat class Budget dan melakukan instansiasi tiap input dimasukkan di halaman form  
5. Menampilkan objek-objek Budget dalam widget `ListTile`, dan dilakukan iterasi for 

## Tugas 9
### Cara Pengambilan Data Pada JSON
Pengambilan data tersebut bisa membuat model atau tidak, tetapi lebih disarankan membuat model. Karena dengan membuat model, pemetaan datanya menjadi jelas
dan memudahkan kita mengambil datanya, tanpa model akan rawan terjadinya error karena bisa saja ada fields yang hilang atau data yang tidak diketahui.

### Widget Digunakan
- `ListTile` row yang menampung teks sebagai leading dan trailing
- `Checkbox` widget yang berfungsi untuk membuat checkbox
- `FutureBuilder` widget yang berfungsi untuk menampilkan data yang diambil dari API
- `TextWidget` yang digunakan untuk menampilkan text
- `Padding` Widget yang digunakan untuk membuat jarak antardalam widget
- `Drawer` Widget yang digunakan untuk membuat navigation drawer

### Mekanisme Pengambilan Data Pada JSON
Http Package adalah library yang dipakai guna mendapatkan http request. Http akan melakukan fetching data dalam dan mereturn http response. Response tersebut 
akan di decode menggunakan jsonDecode() yang akan menghasilkan data-data JSON dalam bentuk Map. Data-data Map tersebut akan kemudian diolah sehingga data-data 
dalam bentuk Map tersebut dapat menjadi data-data pada objek yang merupakan Model instance yang sesuai dengan struktur JSON tersebut

### Implementasi Tugas 9
1. Membuat model `watch_list.dart` di folder model bedasarkan json tugas 3 mywatchlist menggunakan quicktype
2. Membuat `fetch_watch_list.dart` untuk memetekan data json yang diambil dari tugas 3 mywatchlist dan memetekannya ke model WatchList
3. Membuat `watch.dart` menampilkan data mywatchlist tersebut (judul dan check box)
4. Membuat `watch_detail.dart` menampilkan data film yang ditekan dari `watch.dart`
5. Menambahkan drawer yang mengarah ke `watch.dart`
