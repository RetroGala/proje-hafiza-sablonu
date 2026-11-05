# Proje: KLOON AIO Web Kontrol Merkezi (5.2-v2)

## Teknik Bilgiler
- **Dil / Stack:** Python 3 (ThreadingHTTPServer, ctypes Win32 API, subprocess), Vanilla HTML5 / CSS3 / JS (Tek dosya sıfır bağımlılıklı mimari)
- **Proje Konumu:** C:\Users\Asus\Desktop\Project_v2 (Yedek: D:\Asus\Documents\Project_v2)
- **Ana Dosyalar:**
  - pp.py (Web sunucusu, API uç noktaları, canlı kart takipçisi, gömülü terminal yöneticisi ve UI - Port: 8766)
  - 	erminal_runner.py (mainThreads2.py ve checker.py için ANSI renk, SetConsoleTitleW başlık ve input() yakalayıcı sarmalayıcı)
  - date_presets.json (Son kullanma tarihi kısayollarının kalıcı kaydı)
  - used_history.json (Kullanılan/silinen kartların geçmiş kaydı)
- **Çalıştırma:** C:\Users\Asus\Desktop\Project_v2\Baslat.bat veya pythonw "C:\Users\Asus\Desktop\Project_v2\app.py" prep (http://127.0.0.1:8766)
- **Kapatma:** C:\Users\Asus\Desktop\Project_v2\Kapat.bat veya arayüzdeki ✖ Kapat butonu (POST /api/stop)

## Bağlı Harici Araçlar ve Dosyalar (SALT-OKUNUR — ASLA DEĞİŞTİRİLMEMELİ)
1. **İşbank Kart Formatlayıcı:** C:\Users\Asus\Desktop\işbank\main2.py (input.txt, output.txt)
2. **Ana Hesap Havuzu:** C:\Users\Asus\Desktop\accounts.txt
3. **KLOON AIO:** C:\Users\Asus\Desktop\KLOON AIO\
   - mainThreads2.py, config.yaml, dosya_kontrol.py, merge_3m_promo.py, 3m-promo.txt
   - Input\zzz.py, Input\accounts.txt, Input\cards.txt, Input\proxies.txt
   - Output\<tarih_saat>\3m-promo.txt, used_cards.txt, used_accs.txt, success.txt, ailed.txt
4. **Sub Checker:** C:\Users\Asus\Desktop\checker\
   - checker.py, Input\accounts.txt (aktif checklenen önceki tur), Input\Acc.txt (sıradaki turun yedeği), Output\

## Çalışma ve Hafıza Kurallar (YZ İçin)
1. **Oturum Başlangıcı:** İşleme başlamadan önce GitHub CLI (gh api) üzerinden AGENTS.md, docs/STATE.md ve docs/TODO.md dosyalarını oku. Mimari bir değişiklik gerekiyorsa docs/DECISIONS.md dosyasına bak.
2. **Yerel Dosya Kuralı:** Hafıza dosyalarını (AGENTS.md, docs/STATE.md, docs/DECISIONS.md, docs/TODO.md) **asla yerel diskte oluşturma**; yalnızca RetroGala/proje-hafiza-sablonu reposunda güncelle.
3. **Harici Araç Koruması:** main2.py, zzz.py, mainThreads2.py, checker.py, dosya_kontrol.py, merge_3m_promo.py dosyalarının orijinal kodlarına kesinlikle dokunma. Tüm özelleştirmeleri Project_v2 içindeki web kontrol merkezinde yap.
4. **Canlı Süreç Koruması:** Kullanıcı o an aktif bir tur çalıştırıyorsa çalışan sunucuyu/terminalleri habersiz kapatma.
5. **Oturum Sonu / Görev Bitimi:** Yapılan değişikliklerden sonra GitHub API üzerinden docs/STATE.md, docs/TODO.md ve gerekirse docs/DECISIONS.md dosyalarını güncelle.