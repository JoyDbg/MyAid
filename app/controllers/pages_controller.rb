class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing]

  def home
    @pill_prescriptions = []
    current_user.prescriptions.each do |prescription|
      @pill_prescriptions << prescription if prescription.treatment.category == "pills"

    end

    @care_prescriptions = []
    current_user.prescriptions.each do |prescription|
      @care_prescriptions << prescription if prescription.treatment.category == "cares"
    end

    @exercise_prescriptions = []
    current_user.prescriptions.each do |prescription|
      @exercise_prescriptions << prescription if prescription.treatment.category == "exercises"
    end

    @appointments = []
    current_user.appointments.each do |appointment|
      @appointments << appointment
    end

    @diary = Diary.all.last
  end

  def profile
    @user = current_user
  end

  def pills
    pill_prescriptions_all = []
    current_user.prescriptions.each do |prescription|
      pill_prescriptions_all << prescription if prescription.treatment.category == "pills" # ça c'est un array
    end

    pill_prescriptions_ongoing = pill_prescriptions_all.select {|prescription| Date.today.between?(prescription.start_date, prescription.end_date)}
    @pill_prescriptions_morning_afternoon = pill_prescriptions_ongoing.sort_by(&:day_half)

    # raise
    # ⬇️ Marche pas! ça réorganise mes trucs!
    # @pill_prescriptions_hours = pill_prescriptions_morning_afternoon.sort_by!(&:todo_hours)
    # ⬇️ Donc là aussi ça va pas marcher!
    # .sort_by!(&:todo_minutes)
    # raise

    # test_pills.order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}
    # Avec le .select , je passe d'une active record relation à un array
    # là ça marche mais je n'ai pas les .where ✅

    # Array de prescriptions dont la date d'ajd est incluse dans start_date-end_date ✅
    # test_pills.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes)

    # Combiner les deux fonctionne! ✅
    # current_user.prescriptions.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}

    # J'ajoute deux dans la seed qui ont taken_date = Date.today

    # Je les ai! J'ai selectionné ceux qui ont taken_date == Date.today et ceux qui l'ont pas!!
    # current_user.prescriptions.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}.select {|prescription| prescription.taken_date!=Date.today}
    # current_user.prescriptions.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}.select {|prescription| prescription.taken_date==Date.today}

    @pill_prescriptions_sorted_not_taken = current_user.prescriptions.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}.select {|prescription| prescription.taken_date!=Date.today}
    @pill_prescriptions_sorted_taken = current_user.prescriptions.where((:start_date..:end_date).include?Date.today).order(:day_half, :todo_hours, :todo_minutes).select {|prescription| prescription.treatment.category == "pills"}.select {|prescription| prescription.taken_date==Date.today}

    # raise
  end

  def cares
    @care_prescriptions = []
    current_user.prescriptions.each do |prescription|
      @care_prescriptions << prescription if prescription.treatment.category == "cares"
    end
  end

  def exercises
    @exercise_prescriptions = []
    current_user.prescriptions.each do |prescription|
      @exercise_prescriptions << prescription if prescription.treatment.category == "exercises"
    end
  end

  def uikit
  end

  def landing
  end

  def boost
  end

end
