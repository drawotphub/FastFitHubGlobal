from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build

SCOPES = ['https://www.googleapis.com/auth/webmasters']
SITE_URL = 'https://drawotphub.github.io/FastFitHubGlobal/'
SITEMAP_URL = 'https://drawotphub.github.io/FastFitHubGlobal/sitemap.xml'

flow = InstalledAppFlow.from_client_secrets_file('client_secrets.json', SCOPES)
creds = flow.run_local_server(port=0)
service = build('webmasters', 'v3', credentials=creds)

service.sitemaps().submit(siteUrl=SITE_URL, feedpath=SITEMAP_URL).execute()
print('Sitemap submitted successfully')
