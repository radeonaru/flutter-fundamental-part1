# Jobsheet 06: Layout dan Navigasi

## Praktikum 1: Membangun Layout di Flutter

### Langkah 1: Buat Project Baru
![alt text](image.png)

### Langkah 2: Buka file lib/main.dart
![alt text](image-1.png)

### Langkah 3: Identifikasi layout diagram

### Langkah 4: Implementasi title row
![alt text](image-2.png)

## Praktikum 2: Implementasi button row

### Langkah 1: Buat method Column _buildButtonColumn
![alt text](image-3.png)

### Langkah 2: Buat widget buttonSection
![alt text](image-4.png)

### Langkah 3: Tambah button section ke body
![alt text](image-5.png)

## Praktikum 3: Implementasi text section

### Langkah 1: Buat widget textSection
![alt text](image-6.png)

### Langkah 2: Tambahkan variabel text section ke body
![alt text](image-7.png)

## Praktikum 4: Implementasi image section

### Langkah 1: Siapkan aset gambar
![alt text](image-8.png)

### Langkah 2: Tambahkan gambar ke body
![alt text](image-9.png)

### Langkah 3: Terakhir, ubah menjadi ListView
![alt text](image-10.png)

## Tugas Praktikum 1
1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

2. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics
![alt text](image-33.png)

3. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

## Praktikum 5: Membangun Navigasi di Flutter

### Langkah 1: Siapkan project baru
![alt text](image-11.png)

### Langkah 2: Mendefinisikan Route
![alt text](image-12.png)

### Langkah 3: Lengkapi Kode di main.dart
![alt text](image-13.png)

### Langkah 4: Membuat data model
![alt text](image-14.png)

### Langkah 5: Lengkapi kode di class HomePage
![alt text](image-15.png)

### Langkah 6: Membuat ListView dan itemBuilder
![alt text](image-18.png)

### Langkah 7: Menambahkan aksi pada ListView
![alt text](image-17.png)
Hasil
![alt text](image-16.png)
![alt text](image-19.png)

## Tugas Praktikum 2
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

    ``` 
    Navigator.pushNamed(context, '/item', arguments: item);
    ```
![alt text](image-20.png)

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

    ```
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    ```
![alt text](image-21.png)

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

item.dart
![alt text](image-22.png)

home_page.dart
![alt text](image-23.png)
![alt text](image-24.png)
![alt text](image-27.png)

item_page.dart
![alt text](image-25.png)
![alt text](image-26.png)

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
![alt text](image-28.png)
![alt text](image-29.png)

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
![alt text](image-30.png)
![alt text](image-31.png)

6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
![alt text](image-32.png)