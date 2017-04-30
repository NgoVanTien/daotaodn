# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tài Khoản

TaiKhoan.create(email: "admin@gmail.com", name: "Ngô Văn Tiến 5", username: "ngotien5",
  role: 4, password: "123456", password_confirmation: "123456")
TaiKhoan.create(email: "vanphong@gmail.com", name: "Ngô Văn Tiến 4", username: "ngotien4",
  role: 3, password: "123456", password_confirmation: "123456")
TaiKhoan.create(email: "giangvu@gmail.com", name: "Ngô Văn Tiến 3", username: "ngotien3",
  role: 2, password: "123456", password_confirmation: "123456")
TaiKhoan.create(email: "giangvien@gmail.com", name: "Ngô Văn Tiến 2", username: "ngotien2",
  role: 1, password: "123456", password_confirmation: "123456")
TaiKhoan.create(email: "sinhvien@gmail.com", name: "Ngô Văn Tiến 1", username: "ngotien1",
  role: 0, password: "123456", password_confirmation: "123456")


# Khoa
Khoa.create(tenkhoa: "Cơ Khí")
Khoa.create(tenkhoa: "Điện - Điện Tử")
Khoa.create(tenkhoa: "Giao Thông")
Khoa.create(tenkhoa: "May")
Khoa.create(tenkhoa: "Ô Tô")
Khoa.create(tenkhoa: "Điện Lạnh")
Khoa.create(tenkhoa: "Hệ Thống Thông Tin")
Khoa.create(tenkhoa: "Đầu Bếp")

# LoaiMonHoc
LoaiMonHoc.create(ten: "Môn Học Ngoại Khóa")
LoaiMonHoc.create(ten: "Giáo Dục Thể Chất")
LoaiMonHoc.create(ten: "Giáo Dục Quốc Phòng")
LoaiMonHoc.create(ten: "Thực Tập Tốt Nghiệp")
LoaiMonHoc.create(ten: "Sinh Hoạt Chủ Nhiệm")
LoaiMonHoc.create(ten: "Coi Thi")
LoaiMonHoc.create(ten: "Môn Chung")
LoaiMonHoc.create(ten: "Môn Chuyên Nghành")
LoaiMonHoc.create(ten: "Môn Cơ Sở")
LoaiMonHoc.create(ten: "Thực Tập Sản Xuất")

#MonHoc
MonHoc.create(mamonhoc: "CUD", tenmonhoc: "Cơ Ứng Dụng",
  cachviettat: "CUD", hesotinchi: 2, loai_mon_hoc_id: 7, khoa_id: 1)
MonHoc.create(mamonhoc: "Asset 1", tenmonhoc: "Hệ Quản Trị CSDL Asset 1",
  cachviettat: "HQTCSDL Asset1", hesotinchi: 3, loai_mon_hoc_id: 7, khoa_id: 5)
MonHoc.create(mamonhoc: "Asset 2", tenmonhoc: "Hệ Quản Trị CSDL Asset 2",
  cachviettat: "HQTCSDL Asset2", hesotinchi: 3, loai_mon_hoc_id: 7, khoa_id: 5)
MonHoc.create(mamonhoc: "AT", tenmonhoc: "An Toàn Lao Động Điện Lạnh Và Vệ Sinh Công",
  cachviettat: "An Toàn Lao Động", hesotinchi: 1, loai_mon_hoc_id: 10, khoa_id: 2)
MonHoc.create(mamonhoc: "ATĐ", tenmonhoc: "An Toàn Lao Động Điện Lạnh",
  cachviettat: "An Toàn Điện", hesotinchi: 3, loai_mon_hoc_id: 10, khoa_id: 4)
MonHoc.create(mamonhoc: "AVCN", tenmonhoc: "Anh Văn Chuyên Ngành",
  cachviettat: "AV Chuyên Ngành", hesotinchi: 2, loai_mon_hoc_id: 7, khoa_id: 5)
MonHoc.create(mamonhoc: "AVCB", tenmonhoc: "Anh Văn Cơ Bản",
  cachviettat: "AV Cơ Bản", hesotinchi: 2, loai_mon_hoc_id: 7, khoa_id: 5)
MonHoc.create(mamonhoc: "ATTP", tenmonhoc: "Hệ Thống Phun Xăng Điện Tử",
  cachviettat: "HT Phun Xăng", hesotinchi: 2, loai_mon_hoc_id: 7, khoa_id: 3)
MonHoc.create(mamonhoc: "CLT", tenmonhoc: "Thực Phẩm Và An Toàn Thực Phẩm",
  cachviettat: "AT Thực Phẩm", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 6)
MonHoc.create(mamonhoc: "CLT", tenmonhoc: "Cơ Lý Thuyết",
  cachviettat: "Cơ LT", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 1)
MonHoc.create(mamonhoc: "CDOT", tenmonhoc: "Chuẩn Đoán Ô Tô",
  cachviettat: "CĐ Ô Tô", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 3)
MonHoc.create(mamonhoc: "CHM", tenmonhoc: "Cấu Hình Mạng",
  cachviettat: "CH Mạng", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 5)
MonHoc.create(mamonhoc: "CNDPT", tenmonhoc: "Công Nghệ Đa Phương Tiện",
  cachviettat: "CN Đa Phương Tiện", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 5)
MonHoc.create(mamonhoc: "CNDH", tenmonhoc: "Công Nghệ Điều Hoa Không Khí Mới",
  cachviettat: "CN Điều Hòa", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 4)
MonHoc.create(mamonhoc: "CS", tenmonhoc: "Chống Sét Tiếp Địa",
  cachviettat: "Chống Sét TĐ", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 2)
MonHoc.create(mamonhoc: "CTPH", tenmonhoc: "Chế Tạo Phôi Hàn",
  cachviettat: "CT Phôi Hàn", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 1)
MonHoc.create(mamonhoc: "CTM", tenmonhoc: "Chi Tiết Máy",
  cachviettat: "CT Máy", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 1)
MonHoc.create(mamonhoc: "CSNNH", tenmonhoc: "Cơ Sở Ngôn Ngữ Học PassCan",
  cachviettat: "Ngôn Ngữ Học", hesotinchi: 2, loai_mon_hoc_id: 8, khoa_id: 5)


# BacDaoTao
BacDaoTao.create(kyhieu: "Nghề 1", tenbacdaotao: "Nghề Cơ Sở")
BacDaoTao.create(kyhieu: "CĐ", tenbacdaotao: "Cao Đẳng")
BacDaoTao.create(kyhieu: "ĐH", tenbacdaotao: "Đại Học")
BacDaoTao.create(kyhieu: "TC", tenbacdaotao: "Trung Cấp")
BacDaoTao.create(kyhieu: "LT", tenbacdaotao: "Liên Thông")
BacDaoTao.create(kyhieu: "CQ", tenbacdaotao: "Chính Quy")


# KhoaHoc
KhoaHoc.create(tenkhoahoc: "Khóa 7", nambatdau: "2007-04-10", namketthuc: "2009-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 8", nambatdau: "2007-04-10", namketthuc: "2010-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 9", nambatdau: "2010-04-10", namketthuc: "2011-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 10", nambatdau: "2009-04-10", namketthuc: "2012-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 11", nambatdau: "2011-04-10", namketthuc: "2013-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 12", nambatdau: "2013-04-10", namketthuc: "2014-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 13", nambatdau: "2013-04-10", namketthuc: "2015-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 14", nambatdau: "2014-04-10", namketthuc: "2016-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 15", nambatdau: "2015-04-10", namketthuc: "2018-04-10")
KhoaHoc.create(tenkhoahoc: "Khóa 16", nambatdau: "2016-04-10", namketthuc: "2019-04-10")


# ChuongTrinhDaoTao
ChuongTrinhDaoTao.create(mactdt: "daotao1", tenctdt: "Công Nghệ Thông Tin Mạng", sotinchi: 150, bac_dao_tao_id: "1", khoa_hoc_id: "9", khoa_id: "5")
ChuongTrinhDaoTao.create(mactdt: "daotao2", tenctdt: "Công Nghệ Thông Tin Nhúng", sotinchi: 150, bac_dao_tao_id: "1", khoa_hoc_id: "1", khoa_id: "5")
ChuongTrinhDaoTao.create(mactdt: "daotao3", tenctdt: "Công Nghệ Thông Tin Phần Mềm", sotinchi: 150, bac_dao_tao_id: "2", khoa_hoc_id: "1", khoa_id: "5")
ChuongTrinhDaoTao.create(mactdt: "daotao4", tenctdt: "Điện Lạnh", sotinchi: 200, bac_dao_tao_id: "2", khoa_hoc_id: "2", khoa_id: "2")
ChuongTrinhDaoTao.create(mactdt: "daotao5", tenctdt: "Đầu Bếp Thuyền Du Lịch", sotinchi: 200, bac_dao_tao_id: "3", khoa_hoc_id: "2", khoa_id: "6")
ChuongTrinhDaoTao.create(mactdt: "daotao6", tenctdt: "Xây Đường 1", sotinchi: 200, bac_dao_tao_id: "3", khoa_hoc_id: "2", khoa_id: "6")
ChuongTrinhDaoTao.create(mactdt: "daotao7", tenctdt: "Chế Tạo Máy", sotinchi: 150, bac_dao_tao_id: "4", khoa_hoc_id: "3", khoa_id: "1")
ChuongTrinhDaoTao.create(mactdt: "daotao8", tenctdt: "Ô Tô Công Nghiệp", sotinchi: 150, bac_dao_tao_id: "4", khoa_hoc_id: "3", khoa_id: "3")
ChuongTrinhDaoTao.create(mactdt: "daotao9", tenctdt: "Ô Tô", sotinchi: 100, bac_dao_tao_id: "5", khoa_hoc_id: "4", khoa_id: "3")
ChuongTrinhDaoTao.create(mactdt: "daotao10", tenctdt: "Lái Xe", sotinchi: 100, bac_dao_tao_id: "5", khoa_hoc_id: "5", khoa_id: "3")


# GiaoVien
GiaoVien.create(tengiaovien: "Nguyễn Văn A", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn B", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn C", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn D", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn E", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn F", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn G", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn H", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn I", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn K", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn L", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn M", namsinh: "1972-02-08", khoa_id: 1)
GiaoVien.create(tengiaovien: "Nguyễn Văn N", namsinh: "1972-02-08", khoa_id: 1)

GiaoVien.create(tengiaovien: "Nguyễn Văn Nguyên", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Lê Lộc", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Huỳnh Hữu Hưng", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Trần Thế Vũ", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Mỹ Hạnh", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Khắc Duy", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Trọng Tấn", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Ngọc Hải", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Đức Mạnh", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Tấn Trường", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Duy Khôi", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Ngọc Anh", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Đinh Mạnh Ninh", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Mai Văn Hà", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Bảo Châu", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Ngọc Quyên", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Khắc Đạo", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Tấn Trường", namsinh: "1972-02-08", khoa_id: 5)
GiaoVien.create(tengiaovien: "Đổ Mạnh", namsinh: "1972-02-08", khoa_id: 5)

GiaoVien.create(tengiaovien: "Nguyễn Không", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn Hoàng", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn Việt Đức", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn Ngọc Châu", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn Đức Phát", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn Hồng Diệu", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn CC", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn AA", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn BB", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn DD", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn EE", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn GGG", namsinh: "1972-02-08", khoa_id: 6)
GiaoVien.create(tengiaovien: "Nguyễn FFFF", namsinh: "1972-02-08", khoa_id: 6)

GiaoVien.create(tengiaovien: "Nguyễn Xuaan Vủ", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Bá Đạo", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Đương Nhiên", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Thế Hoa", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Trà Linh", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Mỹ Duyên", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Hải", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Đức", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Văn Tuyền", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Văn Mạnh", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Văn Hồng", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Văn Áp", namsinh: "1972-02-08", khoa_id: 3)
GiaoVien.create(tengiaovien: "Nguyễn Văn Tọng", namsinh: "1972-02-08", khoa_id: 3)


# ChuyeMon

(1..58).each do |giaovien|
  ChuyenMon.create(chuyenmon: rand(0..2), giao_vien_id: giaovien, mon_hoc_id: rand(1..18))
end

#Lop
Lop.create(tenlop: "12T4", chuong_trinh_dao_tao_id: 1)
Lop.create(tenlop: "12T1", chuong_trinh_dao_tao_id: 1)
Lop.create(tenlop: "12T2", chuong_trinh_dao_tao_id: 1)
Lop.create(tenlop: "12T3", chuong_trinh_dao_tao_id: 1)
Lop.create(tenlop: "12ND4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12NL4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12C4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12C3", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12TCLC", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12BN", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12HV", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12TY", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "12KL", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11T1", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11T2", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11T3", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11T4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11NL1", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11NL2", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11NL3", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11NL4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11TL1", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11TL2", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11TL4", chuong_trinh_dao_tao_id: rand(1..9))
Lop.create(tenlop: "11CLC", chuong_trinh_dao_tao_id: rand(1..9))


#SInhVien
ten = [
"Nguyễn Văn Nguyên",
"Lê Lộc",
"Huỳnh Hữu Hưng",
"Trần Thế Vũ",
"Mỹ Hạnh",
"Khắc Duy",
"Trọng Tấn",
"Ngọc Hải",
"Đức Mạnh",
"Tấn Trường",
"Duy Khôi",
"Ngọc Anh",
"Đinh Mạnh Ninh",
"Mai Văn Hà",
"Bảo Châu",
"Ngọc Quyên",
"Khắc Đạo",
"Tấn Trường",
"Đổ Mạnh",
"Nguyễn Văn Tài",
"Nguyễn Văn Anh",
"Nguyễn Không",
"Nguyễn Hoàng",
"Nguyễn Việt Đức",
"Nguyễn Ngọc Châu",
"Nguyễn Đức Phát",
"Nguyễn Hồng Diệu",
"Nguyễn CC",
"Nguyễn Xuaan Vủ",
"Nguyễn Bá Đạo",
"Nguyễn Đương Nhiên",
"Nguyễn Thế Hoa",
"Nguyễn Trà Linh",
"Nguyễn Mỹ Duyên",
"Nguyễn Hải",
"Nguyễn Đức",
"Nguyễn Văn Tuyền",
"Nguyễn Văn Mạnh",
"Nguyễn Văn Hồng",
"Nguyễn Văn Áp",
"Nguyễn Văn Tọng",
"Ngô Văn Tiến",
"Huỳnh Hửu Hải",
"Lý Đức Long",
"Lê Thị Cúc",
"Hà Hữu Tín",
"Lê Quang Tín",
"Vũ Khắc Linh",
"Long Nhật",
"Chế Linh",
"Diễm Quỳnh",
"Đàm Vĩnh Hưng",
"DUy Mạnh",
"Đổ Nhẩn",
"Đổ Long",
"Nguyễn Nam Cường",
"Khắc Việt",
"Châu Kiệt Quệ",
"Châu Tinh Trì",
"Việt Hương",
"Thế Duy",
"Duy Khôi",
"Đức Mạnh",
"Nguyễn Văn Hết"
]
(1..500).each do |a|
  random_ten = ten.sample
  SinhVien.create(tensinhvien: random_ten, namsinh: "1993-06-15", lop_id: rand(1..25))
end
