<?php
require_once __DIR__ . '/vendor/autoload.php';

// vlucas/phpdotenv
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

// Koneksi ke database
$host = $_ENV["HOST"];
$user = $_ENV["USER"];
$pass = $_ENV["PASS"];
$dbname = $_ENV["DBNAME"];

// Koneksi run
$con = mysqli_connect($host, $user, $pass, $dbname);
// if ($con) {
//     echo "Koneksi ke Database berhasil";
// } else {
//     echo "Koneksi ke Database gagal";
// }

// Session start;
session_start();


// Menambah barang baru
if (isset($_POST['addbarang'])) {
    // Inisialisasi Barang
    $namabarang = $_POST['namabarang'];
    $deskripsi = $_POST['deskripsi'];
    $stock = $_POST['stock'];

    // Command mysql to add in database
    $sql = "INSERT INTO stocks (namabarang, deskripsi, stock) VALUES ('$namabarang', '$deskripsi', '$stock')";
    $result = mysqli_query($con, $sql);
    if ($result) {
        header('location: index.php');
    } else {
        header('location: index.php');
    }
}

// Barang masuk
if (isset($_POST['addinbarang'])) {
    $namabarang = $_POST['namabarang'];
    $keterangan = $_POST['keterangan'];
    $qty = $_POST['qty'];

    $sql = "INSERT INTO masuk (namabarang, keterangan, qty) VALUES ('$namabarang', '$keterangan', '$qty')";
    $result = mysqli_query($con, $sql);
    $checkstock = mysqli_query($con, "SELECT * FROM stocks WHERE namabarang = '$namabarang'");
    $grapstock = mysqli_fetch_array($checkstock);

    $stock = $grapstock['stock'];
    $updatestock = $stock + $qty;
    $sql = mysqli_query($con, "UPDATE stocks SET stock = '$updatestock' WHERE namabarang = '$namabarang'");
    if ($result && $updatestock) {
        header('location:masuk.php');
    } else {
        echo "Gagal";
        header('location:masuk.php');
    }
}

if (isset($_POST['addoutbarang'])) {
    $namabarang = $_POST['namabarang'];
    $penerima = $_POST['penerima'];
    $qty = $_POST['qty'];

    // Cek stock tersedia
    $checkstock = mysqli_query($con, "SELECT * FROM stocks WHERE namabarang = '$namabarang'");
    $grapstock = mysqli_fetch_array($checkstock);
    $stock = $grapstock['stock'];

    if ($stock >= $qty) {
        // Jika stock tersedia, lakukan insert dan update
        $sql = "INSERT INTO keluar (namabarang, penerima, qty) VALUES ('$namabarang', '$penerima', '$qty')";
        $result = mysqli_query($con, $sql);
        $updatestock = $stock - $qty;
        $sql = mysqli_query($con, "UPDATE stocks SET stock = '$updatestock' WHERE namabarang = '$namabarang'");

        if ($result && $updatestock) {
            header('location:keluar.php');
        } else {
            echo "Gagal";
            header('location:keluar.php');
        }
    } else {
        // Jika stock tidak tersedia, tampilkan pesan error
        echo "Stock tidak tersedia!";
        header('location:keluar.php');
    }
}


// Edit prosesed
if (isset($_POST['editbarang'])) {
    $idbarang = $_POST['idbarang'];
    $namabarang = $_POST['namabarang'];
    $deskripsi = $_POST['deskripsi'];

    $sql = "UPDATE stocks SET namabarang = '$namabarang', deskripsi = '$deskripsi' WHERE idbarang = '$idbarang'";
    mysqli_query($con, $sql);
    header('location:index.php');
}

// Delete barang
if (isset($_POST['deletebarang'])) {
    $idbarang = $_POST['idbarang'];
    $namabarang = $_POST['namabarang'];

    $sql = "DELETE FROM stocks WHERE idbarang = '$idbarang'";
    $result = mysqli_query($con, $sql);

    if ($result) {
        header('location: index.php');
    } else {
        header('location: index.php');
    }
}