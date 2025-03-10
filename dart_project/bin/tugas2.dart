import 'dart:io';
import 'dart:math';

// Tugas 1: Menentukan apakah usia memenuhi syarat untuk memilih
void task1() {
  stdout.write("Masukkan usia Anda: ");
  int usia = int.parse(stdin.readLineSync()!);
  // Misalkan batas usia untuk memilih adalah 17 tahun
  if (usia >= 17) {
    print("Anda memenuhi syarat untuk memilih.");
  } else {
    print("Anda belum memenuhi syarat untuk memilih.");
  }
}

// Tugas 2: Menggunakan switch-case untuk menentukan apakah angka positif, negatif, atau nol
void task2() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  // Gunakan variabel sign untuk menentukan kategori angka
  int sign = (angka > 0)
      ? 1
      : (angka < 0)
          ? -1
          : 0;
  switch (sign) {
    case 1:
      print("Angka tersebut adalah positif.");
      break;
    case -1:
      print("Angka tersebut adalah negatif.");
      break;
    case 0:
      print("Angka tersebut adalah nol.");
      break;
  }
}

// Tugas 3: Menghitung faktorial suatu angka menggunakan perulangan while
void task3() {
  stdout.write("Masukkan angka untuk menghitung faktorial: ");
  int n = int.parse(stdin.readLineSync()!);
  if (n < 0) {
    print("Faktorial tidak didefinisikan untuk angka negatif.");
    return;
  }
  int faktorial = 1;
  int i = n;
  while (i > 1) {
    faktorial *= i;
    i--;
  }
  print("Faktorial dari $n adalah: $faktorial");
}

// Tugas 4: Permainan tebak angka antara 1 dan 10 menggunakan perulangan do-while
void task4() {
  const int angkaBenar = 7; // Angka yang harus ditebak
  int tebakan;
  do {
    stdout.write("Tebak sebuah angka antara 1 dan 10: ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan != angkaBenar) {
      print("Tebakan Anda salah, coba lagi.");
    }
  } while (tebakan != angkaBenar);
  print("Selamat! Tebakan Anda benar.");
}

// Tugas 5: Mencetak elemen daftar dalam urutan terbalik menggunakan for-in
void task5() {
  List<int> daftar = [10, 20, 30, 40, 50];
  print("Daftar asli: $daftar");
  print("Daftar dalam urutan terbalik:");
  for (var elemen in daftar.reversed) {
    print(elemen);
  }
}

// Tugas 6: Memeriksa apakah tahun merupakan tahun kabisat atau bukan
void task6() {
  stdout.write("Masukkan sebuah tahun: ");
  int tahun = int.parse(stdin.readLineSync()!);
  if ((tahun % 400 == 0) || ((tahun % 4 == 0) && (tahun % 100 != 0))) {
    print("$tahun adalah tahun kabisat.");
  } else {
    print("$tahun bukan tahun kabisat.");
  }
}

// Tugas 7: Menentukan apakah hari adalah hari kerja atau akhir pekan menggunakan switch-case
void task7() {
  stdout.write("Masukkan nama hari (misal: Senin): ");
  String hari = stdin.readLineSync()!.toLowerCase();
  switch (hari) {
    case "senin":
    case "selasa":
    case "rabu":
    case "kamis":
    case "jumat":
      print("$hari merupakan hari kerja.");
      break;
    case "sabtu":
    case "minggu":
      print("$hari merupakan akhir pekan.");
      break;
    default:
      print("Input tidak valid.");
  }
}

// Tugas 8: Menghitung jumlah digit dari suatu angka menggunakan perulangan while
void task8() {
  stdout.write("Masukkan sebuah angka: ");
  int angka = int.parse(stdin.readLineSync()!);
  int jumlahDigit = 0;
  int temp = angka.abs(); // Tangani jika angka negatif
  if (temp == 0) {
    jumlahDigit = 1;
  } else {
    while (temp > 0) {
      jumlahDigit++;
      temp ~/= 10;
    }
  }
  print("Jumlah digit dari angka $angka adalah: $jumlahDigit");
}

// Tugas 9: Permainan tebak angka antara 1 dan 100 menggunakan perulangan do-while
void task9() {
  Random rand = Random();
  int angkaRahasia = rand.nextInt(100) + 1; // angka antara 1 dan 100
  int tebakan;
  print("Tebak angka antara 1 dan 100.");
  do {
    stdout.write("Masukkan tebakan Anda: ");
    tebakan = int.parse(stdin.readLineSync()!);
    if (tebakan < angkaRahasia) {
      print("Tebakan Anda terlalu rendah.");
    } else if (tebakan > angkaRahasia) {
      print("Tebakan Anda terlalu tinggi.");
    }
  } while (tebakan != angkaRahasia);
  print("Selamat! Tebakan Anda benar, angka rahasianya adalah $angkaRahasia.");
}

// Tugas 10: Mengulangi melalui daftar kata dan mencetak setiap kata beserta panjangnya
void task10() {
  List<String> kataList = ["apel", "pisang", "ceri", "durian", "anggur"];
  for (var kata in kataList) {
    print("Kata: $kata, Panjang: ${kata.length}");
  }
}

void main() {
  while (true) {
    print("\n========== MENU TUGAS LATIHAN 2 ==========");
    print("1. Cek kelayakan memilih berdasarkan usia");
    print("2. Tentukan apakah angka positif, negatif, atau nol (switch-case)");
    print("3. Hitung faktorial dengan while");
    print("4. Permainan tebak angka (1-10) dengan do-while");
    print("5. Cetak elemen daftar secara terbalik");
    print("6. Periksa tahun kabisat");
    print("7. Tentukan hari kerja atau akhir pekan (switch-case)");
    print("8. Hitung jumlah digit dari suatu angka");
    print("9. Permainan tebak angka (1-100) dengan do-while");
    print("10. Cetak setiap kata beserta panjangnya");
    print("0. Keluar");
    stdout.write("Masukkan pilihan Anda: ");

    String? input = stdin.readLineSync();
    int pilihan = int.tryParse(input ?? "") ?? -1;
    print(""); // baris kosong sebagai pemisah

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
      case 0:
        print("Terima kasih. Program selesai.");
        return;
      default:
        print("Pilihan tidak valid. Silakan coba lagi.");
    }
    print("\n----------------------------------------\n");
  }
}
