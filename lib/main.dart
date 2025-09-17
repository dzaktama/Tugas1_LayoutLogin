import 'package:flutter/material.dart'; // Mengimpor pustaka dasar Material Design dari Flutter.

void main() => runApp(const AplikasiUtama()); // Fungsi utama untuk menjalankan aplikasi.

// Ini adalah kelas widget utama untuk seluruh aplikasi.
class AplikasiUtama extends StatelessWidget {
  const AplikasiUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Widget akar (root) dari aplikasi.
      title: 'Aplikasi Login',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur skema warna utama aplikasi.
      ),
      home: const HalamanLogin(), // Halaman pertama yang akan ditampilkan.
      debugShowCheckedModeBanner: false, // Ngilangin banner "DEBUG" difalse-in
    );
  }
}

// Ini adalah kelas widget khusus untuk tampilan halaman login.
class HalamanLogin extends StatelessWidget {
  const HalamanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Menyediakan struktur dasar untuk layout visual halaman.
      appBar: AppBar( // Bagian bilah judul (app bar) di atas.
        title: const Text('Login Screen'),
        backgroundColor: Colors.blue, // Memberi warna latar belakang biru polos pada AppBar.
        foregroundColor: Colors.white, // Memberi warna putih pada teks dan ikon di AppBar.
        elevation: 0, // Menghilangkan bayangan di bawah AppBar agar terlihat datar.
      ),
      body: Padding( // Memberi jarak (padding) di sekeliling konten utama.
        padding: const EdgeInsets.all(24.0),
        child: Column( // Menyusun widget-widget di dalamnya secara vertikal.
          mainAxisAlignment: MainAxisAlignment.center, // Menempatkan semua konten di tengah layar (vertikal).
          children: <Widget>[
            const FlutterLogo(size: 40.0), // Menampilkan widget logo Flutter.

            const SizedBox(height: 40.0), // Memberi jarak vertikal.

            // Field untuk input teks email dengan ikon.
            TextField(
              decoration: InputDecoration(
                hintText: 'Email', // Teks placeholder di dalam field.
                border: OutlineInputBorder( // Memberi bingkai di sekeliling field.
                  borderRadius: BorderRadius.circular(50.0), // Membuat sudut bingkai melengkung.
                ),
              ),
            ),

            const SizedBox(height: 16.0), // Memberi jarak vertikal.

            // Field untuk input teks password dengan ikon.
            TextField(
              obscureText: true, // Menyembunyikan karakter yang diketik (untuk password).
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),

            const SizedBox(height: 24.0), // Memberi jarak vertikal.

            // Widget untuk membuat tombol memiliki lebar penuh.
            SizedBox(
              width: double.infinity,
              child: ElevatedButton( // Tombol utama untuk login.
                onPressed: () {}, // Aksi saat tombol ditekan (saat ini kosong).
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Mengatur warna latar belakang tombol menjadi biru.
                  foregroundColor: Colors.white, // Mengatur warna teks di dalam tombol menjadi putih.
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0), // Bentuk tombol dengan sudut melengkung.
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0), // Jarak di dalam tombol (padding).
                ),
                child: const Text('Log In'),
              ),
            ),

            // Tombol berupa teks untuk opsi "lupa password".
            TextButton(
              onPressed: () {},
              child: const Text('Forgot password?'),
            ),
          ],
        ),
      ),
    );
  }
}

