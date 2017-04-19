class MonHocDecorator < Draper::Decorator
  delegate_all

  def hesotinchi_display
    {
      "0.5": "0.5",
      "1": "1",
      "1.5": "1.5",
      "2": "2",
      "2.5": "2.5",
      "3": "3",
      "3.5": "3.5",
      "4": "4",
      "10": "10"
    }
  end
end
