# Headless WordPress Template

Template WordPress untuk pengembangan aplikasi web dengan WordPress dijalankan hanya sebagai CMS tanpa antarmuka (headless). Mendukung REST API dan GraphQL sebagai antarmuka API.

Template ini tidak termasuk tampilan _front-end_.

## Instalasi

### Persyaratan

- `docker` dan `docker-compose` (atau Docker Desktop)

### Tata Cara

1. Klon repositori ini ke komputer lokal anda dengan `git clone https://github.com/sentralbisnisdigital/headless-wordpress-boilerplate.git`.
2. Copy file `.env.example` dan ganti namanya menjadi `.env`
3. Jalankan `make run` dan aplikasi akan tersedia di `http://localhost:8080`
4. Lakukan instalasi WordPress sebagaimana biasa.

## Spesifikasi

Template ini sudah mencakup image berikut:

- MariaDB (MySQL versi open source)
- WordPress (dengan plugin WPGraphQL dan FakerPress)
- Nginx

## CLI

Untuk mempermudah proses pengembangan dengan menggunakan template ini perintah-perintah docker (`docker compose -f ./wordpress/docker-compose.yml --env-file .env`) sudah dialias dengan menggunakan `Makefile`. Berikut daftar perintah yang tersedia:

| Perintah Alias    | Instruksi yang dijalankan | Kegunaan                                                     |
| ----------------- | ------------------------- | ------------------------------------------------------------ |
| `make run`        | `up -d`                   | Menjalankan container dalam development mode                 |
| `make run-debug`  | `up`                      | Menjalankan container dalam debug mode                       |
| `make run-build`  | `up --build -d`           | Build ulang container dan menjalankannya di development mode |
| `make stop`       | `stop`                    | Stop container                                               |
| `make remove`     | `down`                    | Stop dan hapus container (tanpa menghapus seluruh data)      |
| `make remove-all` | `down --volumes`          | Stop dan hapus container beserta seluruh data                |
| `make view`       | `ps`                      | Lihat container berjalan                                     |
| `make prod-run`   | `up -d`                   | Menjalankan container dalam production mode                  |
| `make prod-run`   | `up --build -d`           | Build ulang container dan menjalankannya di production mode  |
| `make prod-run`   | `stop`                    | Stop container (production)                                  |
| `make prod-run`   | `down`                    | Stop dan hapus container (production)                        |
| `make prod-run`   | `ps`                      | Lihat container berjalan (production)                        |

## Jalankan di lingkungan produksi

Untuk menjalankan di lingkungan produksi, template ini juga menyediakan konfigurasi khusus untuk dijalankan di lingkungan produksi.

### Persyaratan

- `docker` dan `docker-compose` terinstal di server lokal/VPS anda.
- MySQL atau MariaDB terinstal di server lokal/VPS, atau gunakan jasa _hosted database_ seperti AWS RDS, DigitalOcean, dan lain-lain.

### Tata Cara

1. [Klik di sini](https://github.com/sentralbisnisdigital/headless-wordpress-boilerplate/generate) untuk membuat repositori baru dari template ini, kemudian clone ke komputer lokal anda.
2. Selebihnya, tata cara instalasi sama dengan instalasi mode development, kecuali `.env.example` diganti dengan `.env.prod` dan diisi dengan detail instalasi MySQL/MariaDB anda.

## Lain-lain

Saran dan masukan bisa dengan membuat _Issues_ atau _pull request_.
