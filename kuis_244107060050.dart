void main() {
  // Identitas
  String nama = "Riko Novian";
  String nim = "244107060050";

  // 3 digit terakhir NIM
  double nilaiUnikNIM = 50.0;

  // List harga barang
  List<double> hargaBarang = [
    45000.50,
    78000.25,
    32000.75,
    15000.00,
    60000.40
  ];

  // Menambahkan nilai unik NIM ke list
  hargaBarang.add(nilaiUnikNIM);

  // Hitung total belanja
  double totalAwal = hitungTotal(hargaBarang);

  // Null safety
  String? pesanDiskon;

  double diskon = 0;

  // Control Flow diskon
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  // Output
  print("Nama: $nama");
  print("NIM: $nim");
  print("Total Awal: $totalAwal");
  print("Keterangan Diskon: ${pesanDiskon!}");
  print("Besar Diskon: $diskon");
  print("Total Akhir: $totalAkhir");
}

// Function menghitung total
double hitungTotal(List<double> harga) {
  double total = 0;

  for (double item in harga) {
    total += item;
  }

  return total;
}