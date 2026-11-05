# Mimari ve Teknik Kararlar (DECISIONS)

Bu dosyada projede alınan önemli teknik kararlar ve nedenleri tutulur.

## [2026-10-29] Win32 CreateFileW ile Kilitlenmesiz (Non-Locking) Dosya Okuma
- **Karar:** KLOON AIO\Input\cards.txt ve diğer aktif dosyaları okurken standart Python open() yerine ctypes üzerinden CreateFileW(..., FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, ...) kullanıldı.
- **Neden:** mainThreads2.py çoklu thread ile cards.txt dosyasından anlık satır silip yazarken dosya kilidi (PermissionError / sharing violation) oluşmasını %100 engellemek.

## [2026-10-29] Windows Panosuna Doğrudan Dosya Nesnesi (CF_HDROP) Kopyalama
- **Karar:** Gün sonu raporunda oluşturulan 3m-promo.txt dosyasını panoya kopyalamak için Win32 DROPFILES + CF_HDROP (SetClipboardData(15, hGlobal)) yapısı eklendi.
- **Neden:** Kullanıcının klasöre gitmesine gerek kalmadan sitedeki butona basıp Discord, Telegram veya herhangi bir yere doğrudan Ctrl+V ile dosyayı (3m-promo.txt) yapıştırabilmesi için.

## [2026-10-29] Gömülü Canlı Web Terminalleri (	erminal_runner.py)
- **Karar:** mainThreads2.py ve checker.py süreçleri 	erminal_runner.py sarmalayıcısı üzerinden CREATE_NO_WINDOW ile başlatılıp standart çıktı/girdileri web arayüzündeki sekmeye bağlandı.
- **Neden:** Ayrı siyah CMD pencereleriyle uğraşmadan tüm çıktıları ANSI renkleriyle sitede görmek, SetConsoleTitleW konsol başlıklarını canlı istatistik olarak yakalamak ve uiltins.input yamalayarak "Press Enter to exit..." durumunu web arayüzünden yönetmek.

## [2026-10-30] checker.py ve Acc.txt Yarış Durumu (Race Condition) Çözümü
- **Karar:** Yeni tur başlatılırken eski checker.py süreci kill_existing_without_callback() ile kapatılır; Acc.txt -> checker\Input\accounts.txt aktarımı ise yalnızca süreç "waiting_input" durumundayken kullanıcı Enter gönderdiğinde (_completed_via_enter = True) tetiklenir ve aktarım sonrası checker.py durur.
- **Neden:** Yeni tur başlarken eski checker.py sürecinin kapanış callback'inin yeni yazılan Acc.txt dosyasını checker\Input\accounts.txt üzerine erken kopyalayıp o an mainThreads2.py'nin kullandığı aktif hesapları checklemesini önlemek.

## [2026-10-30] Dinamik Tarih Seçenekleri (date_presets.json) ve Canlı CMD Sayaçları
- **Karar:** Son kullanma tarihi seçenekleri altındaki Tarih Kodu kutusuna dinamik bağlandı ve date_presets.json ile kalıcı hale getirildi. CMD üst barlarındaki statik hesap sayısı yerine SetConsoleTitleW'dan ayrıştırılan canlı sayaçlar (Card Added, Subscribed, Promo Fetched ve Total, Done, Not Subbed, Still Subbed) eklendi.
- **Neden:** Her ay değişen kart son kullanma tarihlerini kod düzenlemeden arayüzden kalıcı güncelleyebilmek ve normal CMD başlığındaki tüm sayaçları sitede anlık görebilmek.

## [2026-11-05] Repo Tabanlı Hafıza Sistemine (RetroGala/proje-hafiza-sablonu) Entegrasyon
- **Karar:** Proje durumu ve teknik kararlar yerel diskte dosya oluşturmadan doğrudan GitHub üzerindeki RetroGala/proje-hafiza-sablonu reposunda (AGENTS.md, docs/STATE.md, docs/DECISIONS.md, docs/TODO.md) tutulacak.
- **Neden:** Token tasarrufu sağlamak, bağlam (context) kaybını önlemek ve oturumlar arası kesintisiz geçiş yapmak.