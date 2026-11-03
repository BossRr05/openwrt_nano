# Riset Platform: Redmi 5A dan OpenWrt

Tanggal riset: 2026-11-04

## Ringkasan

Redmi 5A (riva) menggunakan Qualcomm MSM8917 / Snapdragon 425 dan CPU ARM Cortex-A53 64-bit. Dokumentasi LineageOS mengidentifikasi codename perangkat sebagai Mi8917 dan mencatat varian RAM/storage. Device tree Android tersedia, tetapi device tree Android bukan konfigurasi target OpenWrt.

## Status kompatibilitas

**Belum ditemukan bukti yang cukup untuk menyatakan Redmi 5A sebagai target OpenWrt resmi atau target OpenWrt siap-flash.** Daftar perangkat resmi OpenWrt dan target SoC harus diperiksa secara terpisah. Karena itu proyek ini belum boleh membuat image dengan target router generik lalu menganggapnya cocok untuk ponsel.

Ada pekerjaan port Linux mainline/postmarketOS untuk Riva/MSM8917 yang dapat menjadi bahan studi arsitektur boot, device tree, dan driver. Proyek tersebut bukan OpenWrt, bukan dukungan resmi OpenWrt, dan tidak boleh disalin sebagai image untuk MAGICBOX tanpa audit lisensi, sumber, versi, dan kompatibilitas.

## Referensi awal

- OpenWrt supported devices: https://openwrt.org/supported_devices
- LineageOS device information (Mi8917): https://wiki.lineageos.org/devices/Mi8917/
- Android device tree Riva: https://github.com/Riva-Development/android_device_xiaomi_riva
- Mainline Linux / postmarketOS porting research: https://github.com/kouzen-neo/redmi-5a-postmarketos
- Linux kernel device-tree patch discussion: https://lists.openwall.net/linux-kernel/2026/08/20/857

## Keputusan sementara

1. Jangan memilih target OpenWrt router (misalnya target Qualcomm tertentu) hanya karena nama SoC terlihat mirip.
2. Perlakukan Riva sebagai port perangkat ARM64 tersendiri sampai ada target dan boot flow yang terbukti.
3. Pisahkan userland OpenWrt dari kernel/device-tree/bootloader perangkat.
4. Tahap awal MAGICBOX fokus pada dokumentasi, identitas rilis, paket userland, dan rancangan antarmuka.
5. Firmware bootable ditunda sampai jalur boot, driver penting, dan pemulihan tervalidasi.

## Pekerjaan riset berikutnya

- Cocokkan SoC MSM8917 dengan dukungan kernel upstream dan status device tree.
- Audit lisensi dan kematangan port Linux Riva.
- Tentukan apakah menggunakan kernel upstream atau kernel vendor; jangan mencampur modul dari versi berbeda.
- Petakan kebutuhan initramfs, root filesystem, console UART, storage, dan jaringan.
- Buat matriks fitur: tersedia, parsial, belum ada, atau perlu porting.
