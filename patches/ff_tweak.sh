
# Tweak Gaming Free Fire & CODM
echo "CONFIG_HZ_1000=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_HZ=1000" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_TCP_CONG_BBR=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_DEFAULT_BBR=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_DEFAULT_TCP_CONG=\"bbr\"" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_NET_SCH_FQ=y" >> arch/arm64/configs/gki_defconfig
echo "CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y" >> arch/arm64/configs/gki_defconfig
