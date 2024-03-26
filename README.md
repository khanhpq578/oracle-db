# oracle-db

#1. Đảm bảo Git của bạn có version 2.2 hoặc cao hơn

git --version

# 2. Clone repo

git clone --no-checkout https://github.com/oracle/docker-images

# 3. Truy cập thư mục repo

cd docker-images

# 4. Cập nhật cấu hình để enable sparse checkout

git config core.sparseCheckout true

# 5. Initialize sparse-checkout

git sparse-checkout init --cone

# 6. Checkout thư mục Oracle database

git sparse-checkout set OracleDatabase/SingleInstance

# 7. Pull data

git checkout

# download oracle

https://www.oracle.com/database/technologies/oracle-database-software-downloads.html
move OracleDatabase/SingleInstance/dockerfiles/<oracle-db-version>

# 2. Khởi tạo image

./buildContainerImage.sh -v <oracle-db-version> -s
docker images
