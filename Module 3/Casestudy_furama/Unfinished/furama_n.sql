use casestudy_module3;
select *from nhan_vien
where ten regexp binary '^[HKT]';
/*Hiển thị những nhân viên có tên bắt đầu bằng H,K,T*/
select ho_ten, ngay_sinh, dia_chi from khach_hang
where dia_chi in ('Đà Nẵng','Quảng Trị');
/*Hiển thị họ tên, ngày sinh, địa chỉ của nhwuxng khách hàng có địa chỉ là ĐN, Q.Trị*/

select ho_ten, ngay_sinh, dia_chi, TIMESTAMPDIFF(YEAR,ngay_sinh,current_date()) 'age'
from casestudy_module3.khach_hang
having 'age' > 18;

/*4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
 Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
 Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.*/
select khach_hang.id_khach_hang, khach_hang.ho_ten, 
loai_khach.ten_loai_khach, 
count(hop_dong.id_hop_dong)
from casestudy_module3.khach_hang 
inner join casestudy_module3.loai_khach on khach_hang.id_loai_khach=loai_khach.id_loai_khach
inner join casestudy_module3.hop_dong on hop_dong.id_khach_hang=khach_hang.id_khach_hang
where ten_loai_khach = 'Diamond'
group by khach_hang.id_khach_hang;
/*đếm số lần đặt phòng của những khách hàng 'Diamond'*/

select khach_hang.id_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach,hop_dong.id_hop_dong,hop_dong.ngay_lam_hop_dong,
hop_dong.ngay_ket_thuc,sum(dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong*dich_vu_di_kem.gia) as 'Tong tien' from casestudy_module3.khach_hang
inner join casestudy_module3.loai_khach on khach_hang.id_loai_khach = loai_khach.id_loai_khach
inner join casestudy_module3.hop_dong on hop_dong.id_khach_hang=khach_hang.id_khach_hang
group by khach_hang.ho_ten;

select dich_vu.id_dich_vu, dich_vu.ten_dich_vu, dich_vu.dien_tich, 
dich_vu.so_nguoi_toi_da, dich_vu.chi_phi_thue,loai_dich_vu.ten_loai_dich_vu, from casestudy_module3.dich_vu 
inner join casestudy_module3.loai_dich_vu on dich_vu.id_loai_dich_vu = loai_dich_vu.id_loai_dich_vu
inner join casestudy_module3.hop_dong on dich_vu.id_dich_vu = hop_dong.id_dich_vu


