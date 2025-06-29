Write-Host "`n[✓] CRTY FPS BOOST başlatıldı..." -ForegroundColor Green
Start-Sleep -Milliseconds 500

# GameDVR ve Game Bar ayarları
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 1 /f
reg add "HKCU\System\GameConfigStore" /v GameDVR_FSEBehavior /t REG_DWORD /d 2 /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v AutoGameModeEnabled /t REG_DWORD /d 0 /f

# GPU zamanlaması aç (HwSch)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f

# Windows animasyonlarını kapat
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f

# GameLoop - UITips devre dışı bırak
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v disable_all_tips /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v fps_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v gpu_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v memory_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v performance_mode_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v engine_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v optimize_tip_disabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Tencent\MobileGamePC\UITips" /v DoNotShowAgain /t REG_DWORD /d 1 /f

Write-Host "`n[✓] FPS artırıcı ayarlar başarıyla uygulandı!" -ForegroundColor Cyan
Pause
