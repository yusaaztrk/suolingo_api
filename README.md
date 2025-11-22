# 🤖 Suolingo AI Core API

**Ruby on Rails 7.2** ile güçlendirilmiş, Yeni Nesil Yapay Zeka Destekli Dil Öğrenme Platformu Backend Mimarisi.

Bu proje, **"Çoklu Ortam Yazılım Geliştirme"** dersi kapsamında geliştirilmiş olup, klasik dil öğrenme metotlarını **AI Avatar Simülasyonu**, **Text-to-Speech (TTS)** ve **Speech-to-Text (STT)** teknolojileri ile birleştirir. Kullanıcılar, sanal eğitmenler (Örn: Prof. Dr. Ahmet) ile etkileşime geçebilir, konuşma geçmişlerini yönetebilir ve oyunlaştırma (Gamification) öğeleriyle motivasyonlarını artırabilirler.

---

## 🚀 Teknolojiler & Mimari

* **Framework:** Ruby on Rails 7.2 (API Mode) - *Kararlılık ve Performans için optimize edildi.*
* **Database:** SQLite3 (v1.7 - Windows Compatible)
* **Documentation:** Swagger / OpenAPI 3.0 (RSwag)
* **Architecture:** MVC (Model-View-Controller)
* **Features:**
    * AI Simulation Logic (TTS/STT Stubbing)
    * Session Management (Chat History)
    * Gamification Engine (Leaderboard, XP, Quests)

---

## 🧩 Proje Mimarisi ve UML

Sistem, klasik kurs yapısının yanı sıra **Etkileşimli Simülasyon** modellerini içerir:

* **Avatar:** Sanal eğitmenler (Video loop ve kimlik bilgileri).
* **ChatSession:** Kullanıcı ve Avatar arasındaki oturum yönetimi.
* **Message:** Konuşma geçmişi (İleri/Geri navigasyonu için).
* **Course/Unit/Lesson:** Standart müfredat yapısı.

### 📊 UML Diyagramı

```text
[User|id;email;password_digest;xp_points;level]
[Avatar|id;title;name;description;idle_video_url]
[ChatSession|id;user_id;avatar_id;created_at]
[Message|id;content;audio_url;is_user_message;created_at]
[LanguageCourse|id;name;target_language;difficulty_level]
[Unit|id;title;order_index]
[Lesson|id;title;content_type]

// Relationships
[User]1-n[ChatSession]
[Avatar]1-n[ChatSession]
[ChatSession]1-n[Message]
[LanguageCourse]1-n[Unit]
[Unit]1-n[Lesson]