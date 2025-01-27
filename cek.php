<?php
// Jika belum LogIn
if (isset($_SESSION['log'])) {
} else {
    header('location:login.php');
}