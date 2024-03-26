cd docker-images

git config core.sparseCheckout true

git sparse-checkout init --cone

git sparse-checkout set OracleDatabase/SingleInstance

git checkout