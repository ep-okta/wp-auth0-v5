echo "⚙️ Configuring Wordpress parameters...";
wp core install \
    --url="${WORDPRESS_WEBSITE_URL_WITHOUT_HTTP}" \
    --title="${WORDPRESS_WEBSITE_TITLE}" \
    --admin_user="${WORDPRESS_ADMIN_USER}" \
    --admin_password="${WORDPRESS_ADMIN_PASSWORD}" \
    --admin_email="${WORDPRESS_ADMIN_EMAIL}" \
    --allow-root

wp option update siteurl "${WORDPRESS_WEBSITE_URL}" --allow-root
wp option update users_can_register 1 --allow-root

cd wp-content/plugins

composer require symfony/http-client nyholm/psr7 auth0/wordpress:^5.0 --no-interaction

mkdir ./auth0
cp -r ./vendor/auth0/wordpress/* ./auth0/
mv ./vendor/ ./auth0/vendor/
