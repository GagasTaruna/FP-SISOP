#! /usr/bin/bash

while true
do

echo "Tugas Final Project Sistem Operasi"
echo " "
echo "1. Buat Folder Baru"
echo "2. Hapus Folder"
echo "3. Membuat User Baru"
echo "4. Manipulasi Hak Akses"
echo "5. Buka Firefox"
echo "6. Menghitung Luas Persegi"
echo "7. Menghitung Keliling Persegi"
echo "8. Menghitung Luas Persegi Panjang"
echo "9. Menghitung Keliling Persegi Panjang"
echo "10. Menampilkan Angka Ganjil"
echo "11. Exit Program"
echo " "
read pilih

if [ $pilih == 1 ]
then
	echo "Masukkan Nama Foldernya"
	read nama_folder
	mkdir $nama_folder

	echo "Folder $nama_folder Telah Dibuat"
	echo "Cek Folder?(y/t)"
	read cek_folder
	if [ $cek_folder == y ]
	then
		ls
	fi

	if [ $cek_folder == t ]
	then
		echo "Pembuatan Folder Telah Selesai"
	fi

fi

if [ $pilih == 2 ]
then
	echo "Masukkan Nama Folder Yang Ingin Dihapus"
	read hapus
	rmdir $hapus

	echo "Folder $hapus Telah Dihapus"
	echo "Apakah Anda Ingin Mengecek?(y/t)"
	read cek
	if [ $cek == y ]
	then
		ls
	fi

	if [ $cek == t ]
	then
		echo "Folder Telah Dihapus"
	fi

fi

if [ $pilih == 3 ]
then
	echo "Masukkan Nama User Baru"
	read user
	sudo adduser $user
	echo "User $user Telah Dibuat"
fi

if [ $pilih == 4 ]
then
	ls -l
	echo "File Mana Yang Ingin DIubah Hak Aksesnya?"
	read ubah_akses

	echo "Yakin Anda Ingin Merubah Hak Akses $ubah_akses?(y/t)"
	read yakin
	if [ $yakin == y ]
	then
		echo "1. Ubah Akses Jadi Read Only Untuk Semua User"
		echo "2. Ubah Akses Jadi RW Untuk User Utama dan R Lainnya"
		echo "3. Ubah Akses Jadi RW Untuk Semua User"
		read akses
		clear

		if [ $akses == 1 ]
		then
			sudo chmod 444 $ubah_akses
			ls -l
		fi

		if [ $akses == 2 ]
		then
			sudo chmod 664 $ubah_akses
			ls -l
		fi

		if [ $akses == 3 ]
		then
			sudo chmod 666 $ubah_akses
			ls -l
		fi
	fi

	if [ $yakin == t ]
	then
		echo "Anda Tidak Jadi Mengubah Hak Akses $ubah_akses"
	fi

fi

if [ $pilih == 5 ]
then
	echo "Silahkan Tunggu Browser Firefox Muncul"
	firefox
fi

if [ $pilih == 6 ]
then
	echo "Masukkan Panjang Sisi"
	read sisi

	let luas=$sisi*$sisi
	echo "Luas Persegi Adalah $luas"
fi

if [ $pilih == 7 ]
then
	echo "Masukkan Panjang Sisi"
	read sisi

	let keliling=$sisi*4
	echo "Keliling Persegi Adalah $keliling"
fi

if [ $pilih == 8 ]
then
	echo "Masukkan Panjang"
	read panjang
	echo "Masukkan Lebar"
	read lebar

	let luas=$panjang*$lebar
	echo "Luas Persegi Panjang Adalah $luas"

fi

if [ $pilih == 9 ]
then
	echo "Masukkan Panjang"
	read panjang
	echo "Masukkan Lebar"
	read lebar

	let keliling=$panjang+$panjang+$lebar+$lebar
	echo "Keliling Persegi Panjang Adalah $keliling"
fi

if [ $pilih == 10 ]
then
	echo "Masukkan Angka"
	read a

	b=1
	while [ $b -le $a ]
	do
	echo $b
	b=$(( $b + 2 ))
	done
fi

if [ $pilih == 11 ]
then
	exit
fi

done
