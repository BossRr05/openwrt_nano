# MAGICBOX OS

**Created by / Credit: Rahel**

MAGICBOX OS adalah proyek sistem Linux berbasis OpenWrt yang sedang dikembangkan untuk riset pada Xiaomi Redmi 5A (codename: `riva`).

> **Status: kerangka awal repositori; belum menjadi firmware siap-flash.** Dukungan perangkat, boot chain, kernel, device tree, partisi, Wi-Fi, modem, dan pemulihan wajib diverifikasi sebelum build atau instalasi.

## Identitas
- Nama: MAGICBOX OS
- Basis: OpenWrt
- Perangkat sasaran: Xiaomi Redmi 5A (`riva`)
- Antarmuka awal: terminal dan SSH
- Antarmuka web rencana: LuCI dan MAGICBOX Dashboard
- Package manager rencana: `opkg`, bergantung pada versi basis OpenWrt
- Kredit: Rahel
- Build date: otomatis saat build firmware

## Struktur
- `docs/` — roadmap, status, dan keputusan teknis.
- `target/riva/` — catatan audit perangkat.
- `config/` — contoh identitas rilis.
- `scripts/` — dokumentasi skrip bantu build.
- `feeds/` — rencana integrasi paket tambahan.

## Prinsip
1. Audit sebelum menambah atau mengubah komponen.
2. Jangan flash image yang belum tervalidasi.
3. Pisahkan konfigurasi generik dari konfigurasi perangkat.
4. Catat sumber, versi, lisensi, dan checksum komponen eksternal.
5. Jangan simpan password, token, private key, atau kredensial di Git.

Mulai dari [roadmap](docs/ROADMAP.md), [status teknis](docs/STATUS.md), dan [catatan target Riva](target/riva/README.md).
