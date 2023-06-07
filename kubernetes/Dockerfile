FROM drupal:latest

RUN export $(cat .env)

RUN bash -c "composer require drush/drush && composer require 'drupal/prometheus_exporter:^2.0@beta'"

ENTRYPOINT ["drush", "site-install", "${DRUPAL_PROFILE}", \
         "--locale=${LOCALE}", \
         "--db-url=${DB_URL}", \
         "--site-name=${SITE_NAME}", \
         "--site-mail=${SITE_MAIL}", \
         "--account-name=${ACCOUNT_NAME}", \
         "--account-mail=${ACCOUNT_MAIL}", \
         "--account-pass=${ACCOUNT_PASS}", \
         "--yes"]




RUN apt-get clean && rm -rf /var/lib/apt/lists/*
