# oil 코프링 서버

------------------------------

## Local 실행
1. Start the local server: `./gradlew bootRun`
1. 실행: [localhost:8080](http://localhost:8080)

# GCR에 배포
API URL : https://oil-api-ex2tv5j7uq-du.a.run.app
## Run on Google Cloud Run (with the command line):

1. [Install & setup gcloud](https://cloud.google.com/sdk/install)

1. Deploy on Google Cloud Run:
    ```
   gcloud builds submit --config cloudbuild.yaml . --project=proj-oil
    ```

## Local Docker Build & Run

1. [Install Docker](https://docs.docker.com/get-docker/)

1. Build the image
    ```
    ./gradlew bootBuildImage --imageName=asia.gcr.io/proj-oil/oil-api
    ```

1. Run image:
    ```
    docker run -p8080:8080 asia.gcr.io/proj-oil/oil-api
    ```

1. Open: [localhost:8080](http://localhost:8080)
