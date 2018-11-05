from .base import *
secrets = json.load(open(os.path.join(SECRETS_DIR, 'production.json')))

DEBUG = False

WSGI_APPLICATION = 'config.wsgi.application'

DATABASES = secrets['DATABASES']
