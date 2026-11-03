# Build helper scripts

## gen-release-info.sh

Membuat metadata identitas rilis MAGICBOX OS pada waktu build.

Contoh:

```sh
MAGICBOX_VERSION=dev MAGICBOX_DEVICE=riva ./scripts/gen-release-info.sh ./out/etc/magicbox-release
```

Variabel yang dapat diatur:
- `MAGICBOX_NAME`
- `MAGICBOX_VERSION`
- `MAGICBOX_DEVICE`
- `MAGICBOX_CREDIT`
- `MAGICBOX_BUILD_DATE` (otomatis UTC jika tidak diatur)

Skrip ini hanya membuat file metadata. Skrip ini **tidak** mengompilasi firmware, memilih target OpenWrt, atau menulis ke perangkat.

Skrip build lainnya baru akan ditambahkan setelah versi basis, target, dan toolchain Riva diverifikasi.
