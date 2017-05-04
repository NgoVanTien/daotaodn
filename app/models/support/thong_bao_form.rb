class Support::ThongBaoForm
  def type
    @type ||= ThongBao.types.keys.each_with_index.map do |r, n|
      [I18n.t("thongbao.type.#{r}"), r, {data: {option: n}}]
    end
  end
end
