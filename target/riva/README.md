# Target Xiaomi Redmi 5A (Riva)

Dokumen ini memisahkan fakta perangkat yang sudah ditemukan dari hal yang masih harus diperiksa pada unit fisik.

## Identifikasi perangkat

- Nama: Xiaomi Redmi 5A
- Codename Android: `riva`
- SoC: Qualcomm Snapdragon 425, MSM8917
- CPU: 4-core ARM Cortex-A53 hingga sekitar 1.4 GHz
- GPU: Qualcomm Adreno 308
- RAM: varian 2 GB atau 3 GB
- Storage: varian 16 GB atau 32 GB
- Layar: 720 x 1280

Spesifikasi tersebut cocok dengan referensi device tree Android dan halaman perangkat LineageOS. Periksa varian unit fisik sebelum memilih konfigurasi. Sumber: [Riva device tree](https://github.com/Riva-Development/android_device_xiaomi_riva) dan [LineageOS device page](https://wiki.lineageos.org/devices/Mi8917/).

## Temuan awal dukungan Linux

Ada pekerjaan port Linux mainline/postmarketOS untuk Riva/MSM8917 dan dukungan device-tree Linux yang dipublikasikan. Ini **bukan bukti** bahwa perangkat sudah memiliki target resmi OpenWrt yang siap dipakai. MAGICBOX harus diperlakukan sebagai port perangkat tersendiri sampai target, boot flow, driver, dan storage layout benar-benar diverifikasi.

Referensi untuk ditinjau:
- [Redmi 5A postmarketOS porting notes](https://github.com/kouzen-neo/redmi-5a-postmarketos)
- [Linux kernel discussion: Redmi 5A device tree](https://lists.openwall.net/linux-kernel/2026/08/20/857)

## Audit lokal yang diperlukan

Kumpulkan data berikut dari unit Redmi 5A yang akan dijadikan perangkat uji:
- model/varian dan codename;
- SoC dan arsitektur userspace;
- kernel dan versi Android saat ini;
- daftar block device dan kapasitas;
- peta partisi (nama dan ukuran);
- jenis recovery dan status bootloader;
- daftar antarmuka jaringan dan perangkat yang terdeteksi.

Jangan kirim nomor seri, IMEI, alamat MAC lengkap, akun, atau data pribadi. Sensor identifier sebelum membagikan output.

## Perintah audit non-destruktif

Jalankan melalui Termux. Perintah berikut hanya membaca informasi; sebagian informasi mungkin memerlukan akses root agar tampil lengkap.

```sh
echo "=== MODEL ==="
getprop ro.product.model
getprop ro.product.device
getprop ro.build.version.release
getprop ro.build.version.sdk

echo "=== KERNEL ==="
uname -a
getprop ro.product.cpu.abi
getprop ro.product.cpu.abilist

echo "=== SOC ==="
getprop ro.soc.model
getprop ro.board.platform

echo "=== MEMORY ==="
grep -E 'MemTotal|MemAvailable' /proc/meminfo

echo "=== BLOCK DEVICES ==="
ls -l /dev/block/by-name 2>/dev/null
ls -l /dev/block/bootdevice/by-name 2>/dev/null

echo "=== STORAGE ==="
df -h /data /sdcard 2>/dev/null
cat /proc/partitions

echo "=== NETWORK DEVICES ==="
ip -brief link 2>/dev/null
```

Sebelum membagikan hasil, hapus atau sensor identifier perangkat dan jaringan.

## Batas keselamatan

- Tahap ini hanya audit baca-saja.
- Jangan menulis ke partisi boot, recovery, modem, persist, atau partisi lain.
- Jangan menjalankan perintah flash, format, erase, atau repartition.
- Jangan menguji image pada perangkat utama.
- Siapkan jalur pemulihan yang terdokumentasi sebelum eksperimen lanjutan.

## Status

Belum ada konfigurasi OpenWrt target Riva yang dinyatakan valid dan belum ada firmware MAGICBOX OS siap-flash.
