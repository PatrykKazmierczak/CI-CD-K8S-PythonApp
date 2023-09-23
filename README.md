## Project Steps:

1. :gear: **Setup Kubernetes Cluster:**<br>
   - Use a tool like Minikube or kind to set up a local Kubernetes cluster for development and testing.

2. :rocket: **Create a Simple Web Application:**<br>
   - Develop a basic web application using your preferred programming language (e.g., Node.js, Python, Go).<br>
   - Create a Dockerfile to containerize your application.

3. :whale: **Containerize the Application:**<br>
   - Build a Docker image of your web application.<br>
   - Push the Docker image to a container registry (e.g., Docker Hub, Google Container Registry).

4. :ship: **Kubernetes Deployment:**<br>
   - Create Kubernetes manifests (YAML files) for deploying your application.<br>
   - Deploy your application on Kubernetes using kubectl or a CI/CD tool.

5. :bar_chart: **Implement Monitoring with Prometheus and Grafana:**<br>
   - Install Prometheus and Grafana on your Kubernetes cluster.<br>
   - Configure Prometheus to scrape metrics from your application.<br>
   - Set up Grafana dashboards to visualize the collected metrics.

6. :repeat: **Implement Continuous Integration with CircleCI:**<br>
   - Create a CircleCI configuration file (.circleci/config.yml) in your project repository.<br>
   - Configure CircleCI to build your Docker image, push it to the container registry, and deploy it to Kubernetes.

7. :building_construction: **Implement Continuous Integration with Jenkins:**<br>
   - Set up a Jenkins server either locally or in your Kubernetes cluster.<br>
   - Create a Jenkins pipeline or job to build and deploy your application.<br>
   - Configure Jenkins to trigger the pipeline/job whenever changes are pushed to your repository.

8. :microscope: **Testing and Automation:**<br>
   - Implement unit tests and integration tests for your web application.<br>
   - Integrate testing into your CI/CD pipelines to ensure code quality.

9. :page_with_curl: **Documentation:**<br>
   - Document the project setup, including instructions for setting up the development environment, deploying to Kubernetes, and configuring CI/CD pipelines.

10. :computer: **Demo and Presentation:**<br>
    - Prepare a presentation or demonstration of your project to showcase how everything works together.




![1_XlCuV7dCF967qJWRzm-Mgw](https://github.com/PatrykKazmierczak/Monitoring-and-Continuous-Integration-with-Kubernetes/assets/46955522/1d939857-11ef-4035-883c-f7cf3f221e2a)




# Django-registration-and-login-system
This web app has been developed using the popular Django framework and Bootstrap for the frontend. My motivation to build this project is so that I can learn about Django and tighten up my skills. This mini-app can be easily integrated into a bigger system project that needs to have a registration and login system.

### Basic Features of The App
    
* Register – Users can register and create a new profile
* Login - Registered users can login using username and password
* Social Apps Login – Users can login using their GitHub or Google account
* User Profile - Once logged in, users can create and update additional information such as avatar and bio in the profile page
* Update Profile – Users can update their information such as username, email, password, avatar and bio
* Remember me – Cookie Option, users don’t have to provide credentials every time they hit the site
* Forgot Password – Users can easily retrieve their password if they forget it 
* Admin Panel – admin can CRUD users

### Quick Start
To get this project up and running locally on your computer follow the following steps.
1. Set up a python virtual environment
2. Run the following commands
```
$ pip install -r requirements.txt
$ python manage.py migrate
$ python manage.py createsuperuser
$ python manage.py runserver
```
   
3. Open a browser and go to http://localhost:8000/

