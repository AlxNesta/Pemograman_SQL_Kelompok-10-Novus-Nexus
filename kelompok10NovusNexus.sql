---Codingan Untuk Membuat Tabel

CREATE TABLE Kategori (
    id_kategori CHAR (5) PRIMARY KEY,
    nama_kategori VARCHAR(50)
);

CREATE TABLE Produk (
    id_produk CHAR (5) PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga DECIMAL(10, 2),
    id_kategori CHAR (5),
    FOREIGN KEY (id_kategori) REFERENCES Kategori(id_kategori)
);

CREATE TABLE Pelanggan (
    id_pelanggan CHAR (5) PRIMARY KEY,
    nama_pelanggan VARCHAR(100),
    email VARCHAR(100),
    alamat VARCHAR (255)
);

CREATE TABLE Transaksi (
    id_transaksi CHAR (5) PRIMARY KEY,
    tanggal DATE,
    id_pelanggan CHAR (5),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan)
);

CREATE TABLE DetailTransaksi (
    id_transaksi CHAR (5),
    id_pelanggan CHAR (5),
    id_produk CHAR (5),
    jumlah INT,
    subtotal DECIMAL(10, 2),
    PRIMARY KEY (id_transaksi, id_pelanggan, id_produk),
    FOREIGN KEY (id_transaksi) REFERENCES Transaksi(id_transaksi),
    FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan),
    FOREIGN KEY (id_produk) REFERENCES Produk(id_produk)
);

-- Isi Tabel Produk
INSERT INTO Produk (id_produk, nama_produk, harga, id_kategori)
VALUES ('IP013', 'iPhone 13', 13000000, 'SM001');
INSERT INTO Produk (id_produk, nama_produk, harga, id_kategori)
VALUES ('MCP01', 'MacBook Pro', 30000000, 'LPT01');
INSERT INTO Produk (id_produk, nama_produk, harga, id_kategori)
VALUES ('CH0A1', 'Charger Anker', 500000, 'AKS01');
INSERT INTO Produk (id_produk, nama_produk, harga, id_kategori)
VALUES ('SMT01', 'Samsung Odyssey G9', 25000000, 'MT01');

-- Isi Tabel Pelanggan
INSERT INTO Pelanggan (id_pelanggan, nama_pelanggan, email, alamat)
VALUES ('P001', 'Andi', 'andi@gmail.com','Jln. Satu');
INSERT INTO Pelanggan (id_pelanggan, nama_pelanggan, email, alamat)
VALUES ('P002', 'Budi', 'budi@gmail.com','Jln. Dua');
INSERT INTO Pelanggan (id_pelanggan, nama_pelanggan, email, alamat)
VALUES ('P003', 'Citra', 'citra@gmail.com','Jln. Tiga');
INSERT INTO Pelanggan (id_pelanggan, nama_pelanggan, email, alamat)
VALUES ('P004', 'Dani', 'dani@gmail.com','Jln. Empat');

-- Isi Tabel Transaksi
INSERT INTO Transaksi (id_transaksi, tanggal, id_pelanggan)
VALUES ('TR01', '2024-05-07', 'P001');
INSERT INTO Transaksi (id_transaksi, tanggal, id_pelanggan)
VALUES ('TR02', '2024-05-08', 'P002');
INSERT INTO Transaksi (id_transaksi, tanggal, id_pelanggan)
VALUES ('TR03', '2024-05-09', 'P003');
INSERT INTO Transaksi (id_transaksi, tanggal, id_pelanggan)
VALUES ('TR04', '2024-05-10', 'P004');

-- Isi Tabel Detail Transaksi
INSERT INTO DetailTransaksi (id_transaksi, id_pelanggan, id_produk, jumlah, subtotal)
VALUES ('TR01','P001', 'IP013', 1, 13000000);
INSERT INTO DetailTransaksi (id_transaksi, id_pelanggan, id_produk, jumlah, subtotal)
VALUES ('TR02','P002', 'MCP01', 1, 30000000);
INSERT INTO DetailTransaksi (id_transaksi, id_pelanggan, id_produk, jumlah, subtotal)
VALUES ('TR03','P003', 'CH0A1', 2, 1000000);
INSERT INTO DetailTransaksi (id_transaksi, id_pelanggan, id_produk, jumlah, subtotal)
VALUES ('TR04','P004', 'SMT01', 1, 25000000);