source "https://rubygems.org"

# Rails 8 yerine en guncel ve stabil 7.x surumu
gem "rails", "~> 7.2.2"

# Windows'ta sorunsuz calisan veritabani surucusu
gem "sqlite3", "~> 2.8"

# Windows saat dilimi fixi
gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "puma", ">= 5.0"
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"

# API Dokumantasyonu
gem "rack-cors"
gem "rswag-api"
gem "rswag-ui"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
end