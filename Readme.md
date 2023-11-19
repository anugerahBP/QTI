Kekurangan Program dan Solusi Assessment data engineer_1:

1. **Keterbatasan Akses:**
   - **Kendala:** Program web scraping sangat tergantung pada struktur HTML dan CSS dari situs web yang diambil. Jika situs web tersebut mengalami perubahan struktur, program dapat mengalami kegagalan.
   - **Solusi:** Monitoring reguler terhadap situs web, dan pembaruan program secara berkala ketika ada perubahan struktural pada situs.

2. **Keterbatasan Elemen yang Diambil:**
   - **Kendala:** Program saat ini hanya mengambil judul dan isi dari elemen tertentu di dalam elemen artikel. Jika struktur HTML berubah, atau informasi yang diinginkan tidak ada di situs tersebut, program mungkin tidak memberikan data yang diharapkan.
   - **Solusi:** Selalu pantau struktur HTML situs web dan sesuaikan XPath atau metode pengambilan elemen sesuai kebutuhan. Pertimbangkan untuk memeriksa elemen-elemen lain yang dapat berisi informasi yang diinginkan.

3. **Keterbatasan Waktu Tunggu:**
   - **Kendala:** Program menggunakan waktu tunggu tetap untuk menunggu elemen muncul. Jika waktu tunggu terlalu pendek, elemen mungkin belum dimuat sepenuhnya.
   - **Solusi:** Sesuaikan waktu tunggu berdasarkan kecepatan pemuatan situs web dan kompleksitas elemen yang diambil. Cobalah untuk mencari elemen sebelumnya atau menunggu lebih lama jika diperlukan.

4. **Keterbatasan Kesalahan:**
   - **Kendala:** Program saat ini hanya memberikan pesan umum jika terjadi kesalahan, tanpa memberikan detail spesifik mengenai jenis kesalahan yang terjadi.
   - **Solusi:** Tambahkan penanganan kesalahan yang lebih rinci dan deskriptif. Cetak pesan kesalahan yang dapat membantu mengidentifikasi masalah.

5. **Keterbatasan Program untuk Javascript:**
   - **Kendala:** Program saat ini dikonfigurasi untuk mengambil elemen-elemen dari halaman HTML statis. Jika situs menggunakan Javascript untuk memuat kontennya, program mungkin tidak dapat mengambil data yang diinginkan.
   - **Solusi:** Pertimbangkan untuk menggunakan alat seperti Selenium yang dapat mengeksekusi Javascript atau periksa apakah situs menyediakan API yang dapat diakses untuk mengambil data.

6. **Pemeriksaan Konten Kosong:**
   - **Kendala:** Program tidak memeriksa dengan baik apakah judul atau isi berita kosong sebelum menambahkannya ke dalam list.
   - **Solusi:** Tambahkan pemeriksaan untuk memastikan bahwa judul dan isi berita tidak kosong sebelum menambahkannya ke dalam list.

7. **Pembaruan Otomatis Struktur HTML:**
   - **Kendala:** Program saat ini memerlukan pembaruan manual jika struktur HTML atau XPath berubah.
   - **Solusi:** Pertimbangkan untuk membuat program yang dapat mengidentifikasi struktur HTML secara otomatis atau memanfaatkan teknik machine learning untuk penyesuaian otomatis.

Meskipun pemecahan masalah ini membantu mengatasi beberapa kekurangan, penting untuk diingat bahwa web scraping memiliki keterbatasan dan harus dilakukan dengan etika serta mengikuti kebijakan privasi dan hukum yang berlaku.


Assessment Data Engineer_2:
Susunan program yang dibuat adalah queri dan database mariadb(mysql) QTI-Employee.sql, lalu mengakses python jupyter notebook QTI_Projek.ipynb yang sudah tersimpan sintaks program menjalankan sql pada jupyter notebook.
