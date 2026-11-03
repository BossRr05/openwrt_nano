# Target Xiaomi Redmi 5A (Riva)

Direktori ini menampung hasil audit perangkat. Keberadaan direktori ini **tidak** berarti target OpenWrt untuk perangkat sudah tersedia.

## Identifikasi awal
- Nama perangkat: Xiaomi Redmi 5A
- Codename: `riva`
- Platform/SoC: perlu dikonfirmasi dari perangkat dan sumber teknis yang tepercaya.
- Arsitektur userspace: wajib ditentukan dari target OpenWrt yang dipilih; jangan diasumsikan dari kemampuan CPU saja.

## Data yang harus dikumpulkan
- Model perangkat dan identifikasi SoC.
- Versi bootloader dan recovery.
- Kernel aktif dan konfigurasi kernel.
- DTB/DTBO yang benar-benar digunakan.
- Peta partisi lengkap dan ukuran partisi.
- Jenis dan kapasitas storage.
- Perangkat jaringan dan driver.
- Layar, touchscreen, USB, audio, Bluetooth, kamera, dan modem.

## Batas audit
Selama tahap audit, jangan menulis ke partisi boot, recovery, modem, persist, atau partisi lain. Siapkan informasi pemulihan sebelum eksperimen.
