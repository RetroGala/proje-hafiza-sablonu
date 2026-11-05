# Proje: KLOON AIO Web Kontrol Merkezi (5.2-  v2)

## Teknik Bilgiler
- **Dil / Stack:** P y thon 3 (ThreadingHTTPServer, ctypes Win32 A PI , subprocess), Vanilla HTML5 / CSS3 / JS ( Tek  dosya sıfır bağımlılıklı mimari)
 - ** Proje Konumu:** C:\Users\Asus\Desktop\Pr oject _v2 (Yedek: D:\Asus\Documents\Project_v 2)
- * *Ana Dosyalar:**
  - pp.py (Web sunuc usu, AP I uç noktaları, canlı kart takipç isi, gö mülü terminal yöneticisi ve UI -  Port: 876 6)
  - 	erminal_runner.py (mainThre ads2.py ve  checker.py için ANSI renk, SetCo nsoleTitleW  başlık ve input() yakalayıcı  sarmalayıc ı)
  - date_presets.json (Son k ullanma tarih i kısayollarının kalıcı ka ydı)
  - used _history.json (Kullanılan/sil inen kartların  geçmiş kaydı)
- **Çalı� �tırma:** C:\Us ers\Asus\Desktop\Project_v2\ Baslat.bat veya p ythonw "C:\Users\Asus\Deskt op\Project_v2\app. py" prep (http://127.0.0.1 :8766)
- **Kapatma: ** C:\Users\Asus\Desktop\ Project_v2\Kapat.bat  veya arayüzdeki ✖ Ka pat butonu (POST /api /stop)

## Bağlı Hari ci Araçlar ve Dosyala r (SALT-OKUNUR — ASL A DEĞİŞTİRİLMEMEL� �)
1. **İşbank  Kart Formatlayıcı:** C:\Us ers\Asus\Desktop \işbank\main2.py (input.txt,  output.txt)
2.  **Ana Hesap Havuzu:** C:\User s\Asus\Desktop \accounts.txt
3. **KLOON AIO:**  C:\Users\Asu s\Desktop\KLOON AIO\
   - mainTh reads2.py, c onfig.yaml, dosya_kontrol.py, mer ge_3m_promo .py, 3m-promo.txt
   - Input\zzz.p y, Input\a ccounts.txt, Input\cards.txt, Input \proxies. txt
   - Output\<tarih_saat>\3m-prom o.txt, u sed_cards.txt, used_accs.txt, success .txt,  ailed.txt
4. **Sub Checker:** C:\Users \Asus\ Desktop\checker\
   - checker.py, Input \acco unts.txt (aktif checklenen önceki tur),  Inp ut\Acc.txt (sıradaki turun yedeği), Out put \

## Çalışma ve Hafıza Kurallar (YZ �  �çin)
1. **Oturum Başlangıcı:** İşlem e  başlamadan önce GitHub CLI (gh api) üze rin den AGENTS.md, docs/STATE.md ve docs/TODO .md  dosyalarını oku. Mimari bir değişikl ik ge rekiyorsa docs/DECISIONS.md dosyasına  bak.
2 . **Yerel Dosya Kuralı:** Hafıza dos yaları nı (AGENTS.md, docs/STATE.md, docs/D ECISIONS .md, docs/TODO.md) **asla yerel disk te oluşt urma**; yalnızca RetroGala/proje-h afiza-sabl onu reposunda güncelle.
3. **Hari ci Araç Ko ruması:** main2.py, zzz.py, main Threads2.py,  checker.py, dosya_kontrol.py, m erge_3m_promo .py dosyalarının orijinal kod larına kesinl ikle dokunma. Tüm özelleşti rmeleri Project _v2 içindeki web kontrol mer kezinde yap.
4.  **Canlı Süreç Koruması:* * Kullanıcı o a n aktif bir tur çalıştı rıyorsa çalışa n sunucuyu/terminalleri ha bersiz kapatma.
5.  **Oturum Sonu / Görev Bi timi:** Yapılan de� �işikliklerden sonr a GitHub API üzerinden d ocs/STATE.md, docs/ TODO.md ve gerekirse docs/ DECISIONS.md dosya larını güncelle.  