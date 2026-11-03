# Status Teknis

**Status:** kerangka awal repositori. Belum ada firmware siap-flash.

| Item | Rencana |
|---|---|
| Nama | MAGICBOX OS |
| Basis | OpenWrt |
| Perangkat | Xiaomi Redmi 5A / Riva |
| Antarmuka awal | Terminal + SSH |
| Web UI | LuCI + MAGICBOX Dashboard |
| Package manager | opkg jika didukung basis terpilih |
| Kredit | Rahel |
| Build date | Otomatis saat build |

## Belum diverifikasi
- Ketersediaan target OpenWrt yang cocok untuk Riva.
- Kesesuaian kernel, device tree, bootloader, dan layout partisi.
- Dukungan driver perangkat keras.
- Kompatibilitas paket dan arsitektur.
- Jalur boot dan metode pemulihan.

## Aturan perubahan
1. Catat sumber dan versi.
2. Periksa lisensi dan dependensi.
3. Pastikan target perangkat benar.
4. Tinjau dampak terhadap boot dan partisi.
5. Dokumentasikan cara pemulihan.
