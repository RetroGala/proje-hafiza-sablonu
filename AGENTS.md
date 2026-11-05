# Proje: KLOON AIO Web Kontrol Merkezi (5.2- v2)

## Teknik Bilgiler
- **Dil / Stack:** Py thon 3 (ThreadingHTTPServer, ctypes Win32 API , subprocess), Vanilla HTML5 / CSS3 / JS (Tek  dosya sıfır bağımlılıklı mimari)
- ** Proje Konumu:** C:\Users\Asus\Desktop\Project _v2 (Yedek: D:\Asus\Documents\Project_v2)
- * *Ana Dosyalar:**
  - pp.py (Web sunucusu, AP I uç noktaları, canlı kart takipçisi, gö mülü terminal yöneticisi ve UI - Port: 876 6)
  - 	erminal_runner.py (mainThreads2.py ve  checker.py için ANSI renk, SetConsoleTitleW  başlık ve input() yakalayıcı sarmalayıc ı)
  - date_presets.json (Son kullanma tarih i kısayollarının kalıcı kaydı)
  - used _history.json (Kullanılan/silinen kartların  geçmiş kaydı)
- **Çalıştırma:** C:\Us ers\Asus\Desktop\Project_v2\Baslat.bat veya p ythonw "C:\Users\Asus\Desktop\Project_v2\app. py" prep (http://127.0.0.1:8766)
- **Kapatma: ** C:\Users\Asus\Desktop\Project_v2\Kapat.bat  veya arayüzdeki ✖ Kapat butonu (POST /api /stop)

## Bağlı Harici Araçlar ve Dosyala r (SALT-OKUNUR — ASLA DEĞİŞTİRİLMEMEL� �)
1. **İşbank Kart Formatlayıcı:** C:\Us ers\Asus\Desktop\işbank\main2.py (input.txt,  output.txt)
2. **Ana Hesap Havuzu:** C:\User s\Asus\Desktop\accounts.txt
3. **KLOON AIO:**  C:\Users\Asus\Desktop\KLOON AIO\
   - mainTh reads2.py, config.yaml, dosya_kontrol.py, mer ge_3m_promo.py, 3m-promo.txt
   - Input\zzz.p y, Input\accounts.txt, Input\cards.txt, Input \proxies.txt
   - Output\<tarih_saat>\3m-prom o.txt, used_cards.txt, used_accs.txt, success .txt, ailed.txt
4. **Sub Checker:** C:\Users \Asus\Desktop\checker\
   - checker.py, Input \accounts.txt (aktif checklenen önceki tur),  Input\Acc.txt (sıradaki turun yedeği), Out put\

## Çalışma ve Hafıza Kurallar (YZ � �çin)
1. **Oturum Başlangıcı:** İşleme  başlamadan önce GitHub CLI (gh api) üzerin den AGENTS.md, docs/STATE.md ve docs/TODO.md  dosyalarını oku. Mimari bir değişiklik ge rekiyorsa docs/DECISIONS.md dosyasına bak.
2 . **Yerel Dosya Kuralı:** Hafıza dosyaları nı (AGENTS.md, docs/STATE.md, docs/DECISIONS .md, docs/TODO.md) **asla yerel diskte oluşt urma**; yalnızca RetroGala/proje-hafiza-sabl onu reposunda güncelle.
3. **Harici Araç Ko ruması:** main2.py, zzz.py, mainThreads2.py,  checker.py, dosya_kontrol.py, merge_3m_promo .py dosyalarının orijinal kodlarına kesinl ikle dokunma. Tüm özelleştirmeleri Project _v2 içindeki web kontrol merkezinde yap.
4.  **Canlı Süreç Koruması:** Kullanıcı o a n aktif bir tur çalıştırıyorsa çalışa n sunucuyu/terminalleri habersiz kapatma.
5.  **Oturum Sonu / Görev Bitimi:** Yapılan de� �işikliklerden sonra GitHub API üzerinden d ocs/STATE.md, docs/TODO.md ve gerekirse docs/ DECISIONS.md dosyalarını güncelle. 