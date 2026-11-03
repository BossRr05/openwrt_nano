# Arsitektur Awal MAGICBOX OS

Dokumen ini menjelaskan rancangan perangkat lunak. Ini bukan konfigurasi firmware final.

## Lapisan sistem

```text
Perangkat Xiaomi Redmi 5A (Riva)
        |
Boot chain + kernel + device tree (belum divalidasi)
        |
Initramfs / proses init (perlu dipilih)
        |
Root filesystem berbasis OpenWrt (versi belum dipilih)
        |
BusyBox + shell + package manager yang sesuai versi
        |
SSH + layanan jaringan
        |
LuCI (opsional) + MAGICBOX Dashboard (rencana)
```

## Prinsip desain

- Terminal adalah antarmuka utama pada tahap pertama.
- SSH hanya diaktifkan dengan autentikasi yang aman; jangan memasukkan password default ke image.
- Layanan web tidak wajib aktif pada boot pertama.
- Dashboard harus membaca status sistem melalui antarmuka lokal yang terdokumentasi.
- Paket dan layanan dipilih secara modular agar image dasar tetap kecil.
- Kernel, DTB, firmware Wi-Fi, dan modul harus berasal dari kombinasi versi yang kompatibel.

## Profil fitur bertahap

### Tahap A — Minimal console
- shell BusyBox;
- logging dasar;
- identitas MAGICBOX;
- akses console lokal untuk pengembangan.

### Tahap B — Administrasi jaringan
- konfigurasi interface;
- DHCP client/server sesuai skenario;
- SSH dengan konfigurasi aman;
- DNS dan diagnostik jaringan.

### Tahap C — Web management
- LuCI bila cocok dengan basis OpenWrt;
- MAGICBOX Dashboard sebagai paket terpisah;
- autentikasi dan pembatasan akses dashboard.

## Hal yang belum diputuskan

- Versi OpenWrt dan branch.
- Kernel dan bootloader.
- Root filesystem dan layout storage.
- Network interface/driver yang berfungsi.
- Metode update dan rollback.
