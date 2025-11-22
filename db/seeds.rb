# Avatar Ekleme
puts "Avatarlar yükleniyor..."
Avatar.create!(
  title: "Prof. Dr.",
  name: "Ahmet Yılmaz",
  description: "İngilizce Edebiyatı Bölüm Başkanı.",
  idle_video_url: "https://example.com/ahmet.mp4"
)
puts "✅ Avatarlar hazır!"