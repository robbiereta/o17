# Add Docker's official GPG key:
sudo apt-get update
 sudo git clone https://github.com/robbiereta/o17.git o17

 sudo apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        dirmngr \
        fonts-noto-cjk \
        gnupg \
        libssl-dev \
        node-less \
        npm \
        python3-magic \
        python3-num2words \
        python3-odf \
        python3-pdfminer \
        python3-pip \
        python3-phonenumbers \
        python3-pyldap \
        python3-qrcode \
        python3-renderpm \
        python3-setuptools \
        python3-slugify \
        python3-vobject \
        python3-watchdog \
        python3-xlrd \
        python3-xlwt \
        xz-utils && \
 curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-3/wkhtmltox_0.12.6.1-3.jammy_amd64.deb \
    &&  sudo apt-get install -y --no-install-recommends ./wkhtmltox.deb \
    &&  sudo rm -rf /var/lib/apt/lists/* wkhtmltox.deb

sudo apt install curl ca-certificates
sudo install -d /usr/share/postgresql-common/pgdg
sudo curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
sudo sh -c 'echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt -y install postgresql postgresql-client

createuser --createdb --username postgres --no-createrole --no-superuser --pwprompt odoo17
psql
ALTER USER odoo17 WITH SUPERUSER;he
\q
exit
sudo useradd -m -d /home/odoo -U -r -s /bin/bash odoo17
sudo su odoo17
cd ~/home/odoo
git clone --branch=17.0 --depth=1 --single-branch <https://www.github.com/odoo/odoo>
cd /o17/o17  
sudo ./setup/debinstall.sh


user robbie
host 127.0.0.1
pass ""
db mydb 

rbb1
reor8844
db1
python3 odoo-bin  -d mydb2


// cuando clono la imagen , hay que parar nginx 
// actualizar el dominio en cloud dns , editar el archivo nginx con el nuevo dominio y iniciar de nuevo nginx