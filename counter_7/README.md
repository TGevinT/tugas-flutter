# counter_7
## Tugas 7
## Nama  : Teuku Gevin Taufan
## NPM   : 2106750194
## Kelas : PBP F
## Asdos : DRY

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

