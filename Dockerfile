# Base image NGINX
FROM nginx:alpine

# Set lokasi kerja
WORKDIR /usr/share/nginx/html

# Hapus file default NGINX
RUN rm -rf ./*

# Salin file HTML ke direktori NGINX
COPY . /usr/share/nginx/html

# Salin konfigurasi NGINX yang diperbarui
COPY default.conf /etc/nginx/conf.d/default.conf

# Ekspos port 80
EXPOSE 80
