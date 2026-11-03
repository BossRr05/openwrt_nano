# Build helper scripts

Skrip build belum dibuat karena versi basis OpenWrt, target, dan toolchain untuk Riva belum diverifikasi.

Skrip yang direncanakan:
- pemeriksaan dependensi host;
- pencatatan versi source dan toolchain;
- validasi konfigurasi target;
- pembuatan metadata rilis dan build date;
- pemeriksaan checksum artefak.

Setiap skrip harus aman dijalankan berulang, menjelaskan perubahan, dan tidak menulis ke perangkat fisik secara otomatis.
