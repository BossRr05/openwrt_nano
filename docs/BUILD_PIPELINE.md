# Alur Build MAGICBOX OS

## Status saat ini

GitHub Actions menjalankan **preflight repositori**, bukan kompilasi firmware. Ini disengaja: target OpenWrt untuk Redmi 5A (Riva), kernel, device tree, boot flow, dan layout partisi belum tervalidasi. Menghasilkan image sekarang dapat memberi kesan keliru bahwa image tersebut aman dipasang.

## Pemeriksaan otomatis

Workflow `.github/workflows/preflight.yml` berjalan saat:
- ada push ke branch `main`;
- ada pull request menuju `main`; atau
- workflow dijalankan manual dari tab Actions.

Workflow memeriksa:
1. dokumen inti proyek tersedia dan tidak kosong;
2. sintaks semua skrip shell yang ada valid;
3. status proyek tetap menyatakan bahwa firmware belum siap-flash.

## Cara melihat hasil

1. Buka tab **Actions** pada repositori MAGICBOX OS.
2. Pilih **MAGICBOX repository preflight**.
3. Buka proses terbaru dan periksa setiap langkah.
4. Tanda centang hijau berarti pemeriksaan repositori lulus, bukan berarti firmware dapat boot di Redmi 5A.

## Gerbang sebelum kompilasi firmware

Build firmware baru boleh dirancang setelah tersedia bukti dan keputusan tertulis mengenai:
- varian perangkat Riva yang diuji;
- kernel dan device tree yang cocok;
- boot chain dan cara memulai kernel;
- partisi serta lokasi root filesystem;
- driver penyimpanan, console, dan jaringan;
- metode pemulihan yang sudah diuji;
- versi basis OpenWrt, toolchain, dan format paket.

Jangan mengunggah kredensial, token, private key, IMEI, nomor seri, atau alamat MAC ke repositori maupun log Actions.

## Tahap berikutnya

Lanjutkan audit perangkat Riva secara baca-saja. Setelah data perangkat dikumpulkan dan disensor, dokumentasikan hasilnya di `target/riva/`. Workflow kompilasi firmware akan ditambahkan setelah platform teknisnya terbukti, bukan dengan memilih target router generik.
