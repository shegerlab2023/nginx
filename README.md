
```markdown
# Running Nginx Webserver in a Docker Container

This guide will walk you through the steps to run an Nginx web server in a Docker container, push your work to GitHub, and push the Docker image to Docker Hub.

## Running Nginx in Docker - Setup

1. Create a directory:
   ```bash
   mkdir nginx-docker
   ```

2. Navigate to the directory:
   ```bash
   cd nginx-docker
   ```

3. Create a Dockerfile:
   ```bash
   touch Dockerfile
   ```

## Building the Docker Image

1. Build the Dockerfile:
   ```bash
   docker build -t nginx-docker .
   ```

## Running Nginx in Docker - Execution

1. Run the Docker image:
   ```bash
   docker run --name nginx -p 80:80 -d nginx-docker
   ```

2. Verify the container is running:
   ```bash
   docker ps
   ```

## Testing Nginx

1. Open a web browser and go to:
   [http://localhost:80](http://localhost:80)

2. Verify that the Nginx default website is displayed.

## Pushing to GitHub

1. Navigate to the project directory:
   ```bash
   cd nginx-docker
   ```

2. Initialize a Git repository:
   ```bash
   git init
   ```

3. Add all files:
   ```bash
   git add -A
   ```

4. Commit changes:
   ```bash
   git commit -m "docker for nginx"
   ```

5. Rename the main branch:
   ```bash
   git branch -M main
   ```

6. Add the GitHub remote repository:
   ```bash
   git remote add origin <YOUR-GITHUB-URL>

   Example
   git remote add origin <git@github.com:cloudsheger/nginx-docker.git>
   ```

7. Push to GitHub:
   ```bash
   git push -u origin main
   ```

## Pushing to Docker Hub

1. Register on Docker Hub: [https://hub.docker.com/](https://hub.docker.com/)

2. Log in to Docker Hub from the command line:
   ```bash
   docker login
   ```

3. Tag your Docker image:
   ```bash
   docker tag local-image:tagname new-repo:tagname
   Example:
   docker tag nginx-docker:latest cloudsheger/nginx-docker:v1.0
   ```

4. Push the Docker image to Docker Hub:
   ```bash
   docker push <dockerhub-username>/<dockerhub-repoName>:tagname

   Example : 
   docker push cloudsheger/nginx-docker:v1.0
   ```

## Conclusion

Congratulations! You've successfully created a Dockerized Nginx container, pushed your work to GitHub, and pushed the Docker image to Docker Hub.

For any questions or issues, please refer to the documentation of the respective platforms or seek help from the community.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
