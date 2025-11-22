class Api::V1::InteractionsController < ApplicationController
  
  # --- MEVCUT SİMÜLASYON ---

  def speak
    user_text = params[:text]
    # Simüle edilmiş cevap
    render json: {
      text: "Hello! That is a very interesting point. Tell me more.",
      audio_url: "https://actions.google.com/sounds/v1/ambiences/coffee_shop.ogg",
      animation_trigger: "talking_happy",
      sentiment: "positive"
    }
  end

  def history
    # Örnek geçmiş verisi
    render json: [
      { id: 1, content: "Hello teacher!", is_user: true, timestamp: "10:00" },
      { id: 2, content: "Hi there! Ready to learn?", is_user: false, timestamp: "10:01" }
    ]
  end
  
  def check_pronunciation
    score = rand(85..98)
    render json: { score: score, feedback: "Excellent pronunciation!", fluency_rate: "95%" }
  end

  # --- YENİ EKLENEN PROFESYONEL ENDPOINTLER ---

  # GET /api/v1/profile (Gamification)
  def user_profile
    render json: {
      username: "student_123",
      level: "B2 - Upper Intermediate",
      total_xp: 14500,
      day_streak: 12,
      league: "Diamond"
    }
  end

  # GET /api/v1/leaderboard (Sosyal)
  def leaderboard
    render json: [
      { rank: 1, user: "Ayşe K.", xp: 15200 },
      { rank: 2, user: "Mehmet Y.", xp: 14800 },
      { rank: 3, user: "You", xp: 14500 }
    ]
  end

  # GET /api/v1/daily_quests (Görevler)
  def daily_quests
    render json: [
      { task: "Speak for 5 minutes", progress: 3, target: 5, completed: false },
      { task: "Learn 10 new words", progress: 10, target: 10, completed: true }
    ]
  end

  # POST /api/v1/save_word (Kelime Kaydetme)
  def save_word
    render json: { status: "success", message: "Word added to your vocabulary bank." }
  end
end