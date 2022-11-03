USE Frozen_Food
GO

INSERT INTO City VALUES
   ('CI001','Jakarta','2019-01-01'),
   ('CI002','Bandung','2021-01-01'),
   ('CI003','Surabaya','2020-09-01'),
   ('CI004','Bekasi','2018-09-01'),
   ('CI005','Bogor','2017-10-21')
GO   

INSERT INTO address_customer VALUES
   ('AD001', 'CI001', 'Bengawan Solo Street nomor 10', '14210', '082177889911', '2018-11-13'),
   ('AD002', 'CI001', 'Putri Solo Street nomor 12', '14212', '082167889910', '2019-12-11'),
   ('AD003', 'CI002', 'Putih Melati Street nomor 1', '14213', '082176899912', '2020-10-01'),
   ('AD004', 'CI003', 'Merah Delima Street nomor 9', '14110', '082177899012', '2019-08-08'),
   ('AD005', 'CI003', 'Bunga Mawar Street nomor 3', '14211', '082176897912', '2018-09-04')
GO

INSERT INTO Customer VALUES
   ('CU001','AD001','Tony','Stark','Tonystark@gmail.com','',''),
   ('CU002','AD002','Doni','William','DoniWilliam@gmail.com','',''),
   ('CU003','AD003','Clive','Steve','CliveSteve@gmail.com','',''),
   ('CU004','AD005','Stephany','Clark','CliveSteve@gmail.com','',''),
   ('CU005','AD004','Clark','Steven','ClarkSteven@gmail.com','','')
GO

INSERT INTO Basket VALUES
   ('BK0001','CU001',10),   
   ('BK0002','CU002',50),   
   ('BK0003','CU003',100),
   ('BK0004','CU004',20),   
   ('BK0005','CU005',15)
GO

INSERT INTO [Order] VALUES
   ('ORD0101','CU001','BK0001'),   
   ('ORD0112','CU002','BK0002'),   
   ('ORD0121','CU003','BK0003'),
   ('ORD0135','CU004','BK0004'),   
   ('ORD0148','CU005','BK0005')
GO

INSERT INTO Factory VALUES
   ('FA001','Fiesta','Jalan Gunung Sahari no 1','087777897912'),
   ('FA002','So Good','Jalan Raya Sahari no 100','087777887912'),
   ('FA003','Champ','Jalan Medan Merdeka no 50','087777890912'),
   ('FA004','Belfoods','Jalan Raya Bogor no 1','087777891912'),
   ('FA005','Sunny Gold','Jalan Raya Bekasi no 123','087777877912')
GO

INSERT INTO Supplier VALUES
   ('SU001', 'Anto Style', 'Jalan Ipik Mentari no 10', '087797777912', 'AntoStyle@gmail.com'),
   ('SU002', 'Doni Weasly', 'Jalan Kencana Indah no 8', '087773777912', 'DoniWeasly@gmail.com'),
   ('SU003', 'Roni Grand', 'Jalan Putih Biru no 1', '087778977912', 'RoniGrand@gmail.com'),
   ('SU004', 'Santi Junior', 'Jalan Raya Merdeka no 2', '087777110912', 'SantiJunior@gmail.com'),
   ('SU005', 'Aldi Junior', 'Jalan Bunga Mekar no 7', '08771234912', 'AldiJunior@gmail.com') 
GO

INSERT INTO Payment VALUES
   ('PA001','BK0001',200000,'2021-12-15'),
   ('PA002','BK0002',250000,'2021-09-25'),
   ('PA003','BK0003',100000,'2020-05-10'),
   ('PA004','BK0004',150000,'2019-02-02'),
   ('PA005','BK0005',300000,'2018-01-05')
GO

INSERT INTO Distributor VALUES
  ('DI001','Antony Claire','Jalan Mega Mendung no 1','08777234912','SU001'),
  ('DI002','Harry Style','Jalan Astana Anyar no 2','08777234912','SU001'),
  ('DI003','Tom Holland','Jalan Raya Depok no 30','08777234912','SU003'),
  ('DI004','Jacob Hansel','Jalan Langit Cerah no 20','08777234912','SU004'),
  ('DI005','Pris Junior','Jalan Bintang no 100','08777234912','SU002')
GO

INSERT INTO Item VALUES
  ('IT001','Fried Chicken','25000','2015-01-01','ORD0101'),
  ('IT002','Nugget','35000','2015-01-05','ORD0112'),
  ('IT003','Fried Potato','45000','2016-01-02','ORD0121')
GO

INSERT INTO Storage VALUES
  ('ST001','Jalan Kuning muda nomor 9','DI001','IT001'),
  ('ST002','Jalan Ungu nomor 1','DI002','IT002'),
  ('ST003','Jalan Hijau muda nomor 1','DI002','IT003')
GO