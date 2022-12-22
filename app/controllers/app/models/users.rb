class Schedule < ApplicationRecord
  validate :start_finish_check
  
  def start_finish_check
    if self.start >= self.finish
     errors.add(:finish, "は開始日より前の日付は登録できません") 
    end
  end
end