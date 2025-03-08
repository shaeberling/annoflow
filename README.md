# annoflow
**AnnoFlow** is a way to clearly visualize major events happening in your life.


## Requirements
 - Python
 - `gcloud` CLI
 - Google Cloud, create a project
  - Create Service account with the following roles:
     - Artifact Registry Administrator
     - Artifact Registry Service Agent
     - Cloud Build Service Account
     - Cloud Run Admin
     - Cloud Run Service Agent
     - Cloud Tasks Service Agent
     - Service Account User
 - Firebase, create a project


## Development
 - `python -m venv venv`
 - `. ./venv/bin/activate`
 - `pip install -r requirements.txt`
