# Gunakan image PHP dengan Apache sebagai base
FROM php:7.4-apache

# Install ekstensi PHP yang dibutuhkan
RUN docker-php-ext-install pdo pdo_mysql

# Salin file proyek ke dalam container
COPY . /var/www/html

# Set hak akses yang sesuai
RUN chown -R www-data:www-data /var/www/html

# Expose port yang digunakan oleh Apache
EXPOSE 80
