# Tutorial 6 Game Dev

## Pembuatan Main Menu

Saya memulai dengan membuat scene baru bernama MainMenu.tscn menggunakan MarginContainer sebagai root node. Kemudian saya menyusun layout menggunakan:

- HBoxContainer (membagi layar kiri dan kanan)
- VBoxContainer (menyusun elemen secara vertikal)
- CenterContainer (untuk memposisikan gambar di tengah)

Lalu saya menambahkan:

- Label untuk judul game
- LinkButton untuk tombol "New Game" dan "Stage Select"
- TextureRect untuk menampilkan gambar

Saya juga melakukan styling dengan:

- Mengubah font menggunakan ThemeOverrides
- Mengatur alignment dan separation agar layout lebih rapi

## Implementasi Navigasi Menu (Signal)

Saya menggunakan signal pressed() pada tombol untuk berpindah scene.

- Tombol New Game diarahkan ke scene Level 1
- Tombol Stage Select diarahkan ke scene pemilihan level (yang saya buat pada latihan mandiri)
- Mengatur MainMenu.tscn sebagai Main Scene melalui Project Settings.

## Pembuatan Life Counter (GUI)

Saya membuat script global (Global.gd) untuk menyimpan jumlah nyawa player agar tidak reset saat scene berubah.

Kemudian saya membuat scene LifeCounter.tscn:

- Menggunakan Label untuk menampilkan jumlah nyawa
- Mengupdate nilai secara real-time menggunakan _process()

Scene ini kemudian ditambahkan ke dalam CanvasLayer di level agar tampil sebagai UI.

## Pengurangan Nyawa dan Game Over

Saya memodifikasi script pada Area2D (trigger jatuh) agar:

- Mengurangi nyawa setiap kali player jatuh
- Mengecek apakah nyawa sudah habis

Jika nyawa mencapai 0, Scene akan berpindah ke GameOver.tscn
5. Pembuatan Game Over Screen

Saya membuat scene GameOver.tscn menggunakan:

- ColorRect sebagai background
- Label untuk menampilkan tulisan "GAME OVER"

Scene ini akan muncul ketika nyawa player habis.

## Latihan Mandiri (Fitur Tambahan)

Untuk mencapai nilai maksimal (A), saya mengimplementasikan beberapa fitur tambahan sebagai berikut:

1. Tombol Reset (Polishing)

Saya menambahkan tombol reset yang memungkinkan pemain untuk mengulang level dari awal pada screen Game Over. Fitur ini meningkatkan pengalaman pengguna karena memberikan kontrol tambahan kepada pemain.

2. Tombol Kembali ke Main Menu

Pada layar Game Over, saya menambahkan tombol "Back to Menu" yang memungkinkan pemain untuk kembali ke Main Menu tanpa perlu restart game.

3. Stage Select (Berfungsi)

Saya mengimplementasikan fitur Stage Select yang sebelumnya hanya berupa tombol dummy.

Fitur ini memungkinkan pemain:

- Memilih level tertentu secara langsung
- Berpindah antar level tanpa harus menyelesaikan level sebelumnya
- Kendala yang Dihadapi


Referensi:
- Dokumentasi resmi Godot Engine
- Asset dari Kenney
- Materi kuliah Game Development