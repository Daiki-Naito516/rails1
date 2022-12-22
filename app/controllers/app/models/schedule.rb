class Schedule < ApplicationRecord
  validate :start_end_check

    def start_end_check
      if self.finish < self.start
       errors.add(:finish, "は開始日より前の日付は登録できません。")  
      end
    end
end