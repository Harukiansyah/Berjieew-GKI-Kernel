#!/bin/bash
# Ngasih tau kita folder apa aja yang ada di sana
echo "Daftar folder yang ada:"
ls -F

# Coba masuk ke folder yang kemungkinan besar adalah source code
# Kalau common gak ada, nanti kita liat di log folder apa yang muncul
cd common || cd android-kernel || cd kernel || echo "Folder source code gak ketemu!"

echo "Sekarang berada di:"
pwd

# Baru jalanin tweak-nya
echo "CONFIG_HZ_1000=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_HZ=1000" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_TCP_CONG_BBR=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_DEFAULT_BBR=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_DEFAULT_TCP_CONG=\"bbr\"" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_NET_SCH_FQ=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y" >> arch/arm64/configs/gki_defconfig
