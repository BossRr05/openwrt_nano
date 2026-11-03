# Roadmap MAGICBOX OS

## Tahap 0 — Fondasi repositori
- [x] Membuat struktur dokumentasi awal.
- [ ] Menentukan versi/tag basis OpenWrt.
- [ ] Menetapkan lisensi dan aturan kontribusi.
- [ ] Mencatat sumber, versi, dan checksum komponen.

## Tahap 1 — Audit perangkat Riva
- [ ] Verifikasi model dan codename perangkat.
- [ ] Identifikasi SoC, RAM, storage, eMMC, dan skema partisi.
- [ ] Audit bootloader, recovery, kernel, DTB, dan device tree.
- [ ] Audit driver layar, touchscreen, USB, Wi-Fi, Bluetooth, audio, kamera, dan modem.
- [ ] Dokumentasikan metode pemulihan sebelum eksperimen.

## Tahap 2 — Basis sistem
- [ ] Pilih versi OpenWrt dan toolchain yang sesuai.
- [ ] Verifikasi target/profile perangkat; jangan menganggap target tersedia.
- [ ] Tentukan console, init, filesystem, logging, dan jaringan.
- [ ] Pastikan SSH aman dan ada jalur pemulihan.
- [ ] Verifikasi package manager yang disediakan basis terpilih.

## Tahap 3 — Identitas MAGICBOX
- [ ] Boot banner dan informasi sistem.
- [ ] Kredit "Created by / Credit: Rahel".
- [ ] Build date otomatis dari waktu build.
- [ ] Hostname dan identitas rilis.

## Tahap 4 — Antarmuka
- [ ] Terminal sebagai antarmuka awal.
- [ ] SSH untuk administrasi.
- [ ] LuCI setelah dependensi web tervalidasi.
- [ ] MAGICBOX Dashboard setelah API status sistem ditentukan.

## Tahap 5 — Validasi
- [ ] Build reproducible pada lingkungan terdokumentasi.
- [ ] Uji image di lingkungan aman.
- [ ] Uji boot, jaringan, penyimpanan, dan pemulihan.
- [ ] Rilis image hanya setelah pemeriksaan lulus.

Roadmap ini adalah rencana, bukan bukti bahwa fitur sudah didukung. Jangan flash image yang belum tervalidasi.
