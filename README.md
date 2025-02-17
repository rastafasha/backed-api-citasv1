# backed-api-citasv1

composer update
configuracion .env
php artisan migrate
se crea informacion base simulada para verificar el funcionamiento
php artisan migrate:refresh --seed
roles, usuarios, citas, pagos, tipos de pagos, horarios

se levanta el servidor
php artisan serve

en remoto subir las carpetas del backend
revisar los resources, porque desde remoto laravel cambia el storage
se debe revisar el storage en el archivo .env

con migrate instala la base de datos con los seeders funcionando


