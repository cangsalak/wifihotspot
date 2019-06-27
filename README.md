"# wifihotspot" 
# PHP Mikrotik Billing 
----

![N|phpmixbill](http://4.bp.blogspot.com/-3OWL5OI7pqU/VjocUDdzMDI/AAAAAAAAAiA/s_XJN0_mDlk/s640/Screenshot_8.png)

----

This project maintained by [@ibnux](https://twitter.com/ibnux)

Aplikasi ini dikelola oleh [@ibnux](https://twitter.com/ibnux)

---- 

Download [Mikrotik Login Template](https://github.com/ibnux/phpmixbill-mikrotik-login-template)



Features:
----
- Voucher Generator and Print
- Self registration, user must have voucher before registration
- Multi Router Mikrotik
- Hotspot & PPPOE
- Easy Installation
- Multi Language

TODOS:
----

- SMS Notification to user
- send receipt via SMS or EMAIL
- Social Media Login

Installation
----
Auto Installer
Unzip the contents of the zip file to a folder on your computer.
Upload the Entire phpmixbill folder to your website / server
Next you can rename the folder to whatever you like (billing, finance, manage etc..)
Now visit the uploaded location using your web browser to run the installer process.
Follow the instructions on screen to install PHPMixBill
For security, Delete the install directory inside system folder.
If you see blank page after installation, it might be your compiled folder permission is not writable. Please make permission 755 compiled directory inside ui folder to store the generated contents from theme.
if you get error after submit database configuration, create chmod 777 folder system, retry instalation, after finish, chmod 755 folder system

Manual Install
To install manually, follow this steps-

Unzip the contents of the zip file to a folder on your computer.
Upload the Entire phpmixbill folder to your website / server
Next you can rename the folder to whatever you like (billing, finance, manage etc..)
Sample config file is available here- system/config.sample.php, Rename it to config.php & put it in same location (/system/config.php) Open config file using a text editor & Put the database info and url.
Import database. Database file is located here- system/install/phpmixbill.sql
For security, Delete the install directory inside system folder.
CHMOD
Make writeable file html inside pages except index.html

chmod 664 pages/*.html
chmod 644 pages/index.html


Open issue to get help

System Requirements
----
Most current web servers with PHP & MySQL installed will be capable of running PHPMixBill

Minimum Requirements
- Linux or Windows OS
- PHP Version 5.3+
- Both PDO & MySQLi Support
- GD2 Image Library
- MySQL Version 4.1.x and above

can be Installed in Raspberry Pi Device.

JASA
----

Terima jasa instalasi PHPMIXBILL beserta mikrotiknya.

Via Team Viewer maupun Barang dibeli dari saya dan tinggal pakai.

1. Unit Mikrotik Router
2. Raspberry Pi Server (RasPi + Casing + Meory 16GB + Adaptor)

Jasa kurang lebih Rp. 500.000, belum termasuk ongkir dan harga perangkat, Gratis Tanya Jawab via Messenger (Jika lagi senggang).

hubungi ibnux di [Twitter](https://twitter.com/ibnux) atau di [facebook](https://facebook.com/ibnumaksum)


License
----

GNU General Public License version 2 or later

see LICENSE file


Donate to ibnux
----

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6RBNGRJMZVV7C)

BCA: 5410454825

Mandiri: 163-000-1855-793

a.n Ibnu Maksum

Donate to first Developer
----

PayPal: iesien22@yahoo.com 

Bank Mandiri: 130.00.1024957.4

Donate to Developer Thailand
----
0890167912 
