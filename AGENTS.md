# Proje: KLOON AIO Web Kontrol Merkezi (5.2-   v2)

## Teknik Bilgiler
- **Dil / Stack:**  P y thon 3 (ThreadingHTTPServer, ctypes Win32  A PI , subprocess), Vanilla HTML5 / CSS3 / J S ( Tek  dosya sıfır bağımlılıklı mima ri)
 - ** Proje Konumu:** C:\Users\Asus\Deskt op\Pr oject _v2 (Yedek: D:\Asus\Documents\Pro ject_v 2)
- * *Ana Dosyalar:**
  - pp.py (We b sunuc usu, AP I uç noktaları, canlı kart  takipç isi, gö mülü terminal yöneticisi  ve UI -  Port: 876 6)
  - 	erminal_runner.py  (mainThre ads2.py ve  checker.py için ANSI  renk, SetCo nsoleTitleW  başlık ve input()  yakalayıcı  sarmalayıc ı)
  - date_preset s.json (Son k ullanma tarih i kısayolların� �n kalıcı ka ydı)
  - used _history.json ( Kullanılan/sil inen kartların  geçmiş kay dı)
- **Çalı� �tırma:** C:\Us ers\Asu s\Desktop\Project_v2\ Baslat.bat veya p ython w "C:\Users\Asus\Deskt op\Project_v2\app. py"  prep (http://127.0.0.1 :8766)
- **Kapatma: * * C:\Users\Asus\Desktop\ Project_v2\Kapat.bat   veya arayüzdeki ✖ Ka pat butonu (POST /a pi /stop)

## Bağlı Hari ci Araçlar ve Dos yala r (SALT-OKUNUR — ASL A DEĞİŞTİRİL MEMEL� �)
1. **İşbank  Kart Formatlayı cı:** C:\Us ers\Asus\Desktop \işbank\main2. py (input.txt,  output.txt)
2.  **Ana Hesap H avuzu:** C:\User s\Asus\Desktop \accounts.txt 
3. **KLOON AIO:**  C:\Users\Asu s\Desktop\KL OON AIO\
   - mainTh reads2.py, c onfig.yaml,  dosya_kontrol.py, mer ge_3m_promo .py, 3m-pr omo.txt
   - Input\zzz.p y, Input\a ccounts.t xt, Input\cards.txt, Input \proxies. txt
   -  Output\<tarih_saat>\3m-prom o.txt, u sed_car ds.txt, used_accs.txt, success .txt,  ailed. txt
4. **Sub Checker:** C:\Users \Asus\ Deskt op\checker\
   - checker.py, Input \acco unts .txt (aktif checklenen önceki tur),  Inp ut\ Acc.txt (sıradaki turun yedeği), Out put \
 
## Çalışma ve Hafıza Kurallar (YZ �  � ��çin)
1. **Oturum Başlangıcı:** İşlem  e  başlamadan önce GitHub CLI (gh api) üze  rin den AGENTS.md, docs/STATE.md ve docs/TOD O .md  dosyalarını oku. Mimari bir değişi kl ik ge rekiyorsa docs/DECISIONS.md dosyası na  bak.
2 . **Yerel Dosya Kuralı:** Hafıza  dos yaları nı (AGENTS.md, docs/STATE.md, d ocs/D ECISIONS .md, docs/TODO.md) **asla yere l disk te oluşt urma**; yalnızca RetroGala/ proje-h afiza-sabl onu reposunda güncelle.
3 . **Hari ci Araç Ko ruması:** main2.py, zzz .py, main Threads2.py,  checker.py, dosya_kon trol.py, m erge_3m_promo .py dosyalarının o rijinal kod larına kesinl ikle dokunma. Tüm  özelleşti rmeleri Project _v2 içindeki we b kontrol mer kezinde yap.
4.  **Canlı Süre ç Koruması:* * Kullanıcı o a n aktif bir  tur çalıştı rıyorsa çalışa n sunucuyu /terminalleri ha bersiz kapatma.
5.  **Oturum  Sonu / Görev Bi timi:** Yapılan de� �i şikliklerden sonr a GitHub API üzerinden d  ocs/STATE.md, docs/ TODO.md ve gerekirse docs / DECISIONS.md dosya larını güncelle.   