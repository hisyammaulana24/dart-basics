import 'dart:io';

// Tugas 1: Cetak nama Anda
void task1() {
  print("Nama saya: Muhammad Hisyam Maulana");
}

// Tugas 2: Cetak pesan dengan tanda kutip tunggal dan ganda (menggunakan input pengguna)
void task2() {
  stdout.write("Masukkan nama Anda: ");
  String? nama = stdin.readLineSync();
  nama = nama ?? "John Doe";

  print('Hello, saya "$nama"');
  print("Hello, saya '$nama'");
}

// Tugas 3: Deklarasikan konstanta dengan tipe int dan beri nilai 7
void task3() {
  const int nilai = 7;
  print("Nilai konstanta: $nilai");
}

// Tugas 4: Menghitung bunga sederhana
// Rumus: (p * t * r) / 100
void task4() {
  stdout.write("Masukkan nilai pokok (p): ");
  double p = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan waktu (t) dalam tahun: ");
  double t = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan suku bunga (r): ");
  double r = double.parse(stdin.readLineSync()!);

  double bunga = (p * t * r) / 100;
  print("Bunga sederhana adalah: $bunga");
}

// Tugas 5: Mencetak persegi dari suatu angka (menggunakan input pengguna)
void task5() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);

  int persegi = angka * angka;
  print("Persegi dari angka $angka adalah: $persegi");
}

// Tugas 6: Mencetak nama lengkap berdasarkan nama depan dan nama belakang (input pengguna)
void task6() {
  stdout.write("Masukkan nama depan: ");
  String? namaDepan = stdin.readLineSync();

  stdout.write("Masukkan nama belakang: ");
  String? namaBelakang = stdin.readLineSync();

  namaDepan = namaDepan ?? "";
  namaBelakang = namaBelakang ?? "";

  String namaLengkap = "$namaDepan $namaBelakang";
  print("Nama lengkap: $namaLengkap");
}

// Tugas 7: Menemukan hasil bagi dan sisa dari dua bilangan bulat
void task7() {
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  int hasilBagi = a ~/ b; // Pembagian bulat
  int sisa = a % b;       // Sisa bagi

  print("Hasil bagi: $hasilBagi");
  print("Sisa: $sisa");
}

// Tugas 8: Menukar dua bilangan
void task8() {
  stdout.write("Masukkan bilangan pertama: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan bilangan kedua: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sebelum ditukar: a = $a, b = $b");

  // Menukar dengan menggunakan variabel sementara
  int temp = a;
  a = b;
  b = temp;

  print("Setelah ditukar: a = $a, b = $b");
}

// Tugas 9: Menghapus semua spasi dari String
void task9() {
  stdout.write("Masukkan sebuah kalimat: ");
  String? kalimat = stdin.readLineSync();

  // Menghapus semua spasi
  String tanpaSpasi = kalimat?.replaceAll(' ', '') ?? "";
  print("Kalimat tanpa spasi: $tanpaSpasi");
}

// Tugas 10: Mengonversi String menjadi int
void task10() {
  stdout.write("Masukkan angka dalam bentuk String: ");
  String? input = stdin.readLineSync();

  int angka = int.parse(input!);
  print("Hasil konversi: $angka, dengan tipe data: ${angka.runtimeType}");
}

// Tugas 11: Menghitung pembagian tagihan di restoran
// Rumus: (total tagihan) / (jumlah orang)
void task11() {
  stdout.write("Masukkan total tagihan: ");
  double totalTagihan = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan jumlah orang: ");
  int jumlahOrang = int.parse(stdin.readLineSync()!);

  double pembagianTagihan = totalTagihan / jumlahOrang;
  print("Setiap orang harus membayar: $pembagianTagihan");
}

void main() {
  while (true) {
    print("========== MENU TUGAS LATIHAN ==========");
    print("1. Cetak nama Anda");
    print("2. Cetak pesan dengan tanda kutip tunggal dan ganda");
    print("3. Deklarasi konstanta dengan nilai 7");
    print("4. Menghitung bunga sederhana");
    print("5. Mencetak persegi dari suatu angka");
    print("6. Mencetak nama lengkap (nama depan dan nama belakang)");
    print("7. Hasil bagi dan sisa dari dua bilangan");
    print("8. Menukar dua bilangan");
    print("9. Menghapus semua spasi dari string");
    print("10. Mengonversi string menjadi int");
    print("11. Menghitung pembagian tagihan restoran");
    print("0. Keluar");
    stdout.write("Masukkan pilihan Anda: ");
    
    String? input = stdin.readLineSync();
    int pilihan = int.tryParse(input ?? "") ?? -1;
    
    print(""); // Baris kosong untuk pemisah output

    switch (pilihan) {
      case 1:
        task1();
        break;
      case 2:
        task2();
        break;
      case 3:
        task3();
        break;
      case 4:
        task4();
        break;
      case 5:
        task5();
        break;
      case 6:
        task6();
        break;
      case 7:
        task7();
        break;
      case 8:
        task8();
        break;
      case 9:
        task9();
        break;
      case 10:
        task10();
        break;
      case 11:
        task11();
        break;
      case 0:
        print("Terima kasih. Program selesai.");
        return;
      default:
        print("Pilihan tidak valid. Silakan coba lagi.");
    }
    print("\n----------------------------------------\n");
  }
}
