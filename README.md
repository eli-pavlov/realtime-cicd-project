<div align='center'>
<img src= "https://github.com/eli-pavlov/realtime-cicd-project/blob/master/docs/githubactions2.png" width=320 />
<h1> GitHub Actions CI/CD Project</h1>
 
<p> Kubernetes web app deployment pipeline using Github Actions together with Security & Code quality analysis tools. </p>

<h4> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/blob/master/README.md"> Documentation </a> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/issues"> Report Bug </a> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/issues"> Request Feature </a> </h4>

$~~$
</div>

## :world_map: Project Diagram

<img src= "https://github.com/eli-pavlov/realtime-cicd-project/blob/master/docs/rtproject-diagram.png" width=1080 />


$~$

 :notebook_with_decorative_cover: Table of Contents
 
 - [Project Diagram](#world_map-project-diagram)
- [About the Project](#star2-about-the-project)
- [Project Files](#open_file_folder-files)
- [License](#warning-license)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)


$~~$


## :star2: About the Project

This workflow automates the deployment process for a web application to a Kubernetes cluster. It integrates code quality analysis, static security checks, and versioning to ensure code quality and secure deployments.

**Features:**

- Automated Deployments: On push to the master branch or pull request merge, the workflow triggers a deployment process.<br>
- Code quality Analysis: Leverages SonarCloud to analyze the codebase for potential issues and maintain code quality.<br>
- Static Security Checks: Uses Snyk to scan infrastructure as code (IaC) files for vulnerabilities, enhancing overall security posture.<br>
- Versioning: Extracts the version number from the commit message or defaults to "latest" for deployments.<br>
- Multi-arch Builds (Optional): Supports building Docker images for multiple architectures using QEMU and Docker Buildx (enabled when a version other than "latest" is deployed).<br>
- Secure Deployment: Requires secrets for Docker Hub login, remote machine access, and application name for secure storage.<br>

$~~$

**Workflow Breakdown:**
--
**SonarCloud-CodeQuality-Analysis:**

Checks out the codebase with full history (fetch-depth: 0).<br>
Analyzes the code using the SonarCloud action, providing required secrets (GITHUB_TOKEN and SONAR_TOKEN) via environment variables.<br>
Additional arguments for the SonarCloud scanner can be specified in the args section (e.g., -Dsonar.projectKey=${{ secrets.SONAR_PROJECT_KEY }}).<br>

**Snyk Static Application Security Testing**:

Checks out the codebase.<br>
Uses the Snyk action for IaC file scanning, providing the SNYK_TOKEN secret in the environment.<br>
Includes the continue-on-error: true option to keep the workflow running even if Snyk finds issues. This allows for manual review.<br>

**Build and deploy app (Requires successful completion of previous jobs):**

Runs on Ubuntu runner.
Checks out the codebase.
Sets up Node.js version 20.0.
Extracts the version number from the commit message using regular expressions or defaults to "latest" if not found.
Sets the version as an environment variable ($VERSION).
Logs in to Docker Hub (only for non-"latest" deployments) using the docker/login-action and provides Docker Hub username and token secrets.
Sets up QEMU for multi-arch builds (optional, only for non-"latest" deployments).
Sets up Docker Buildx for multi-arch builds (optional, only for non-"latest" deployments).
Builds and pushes the Docker image (only for non-"latest" deployments) using the docker/build-push-action. Supports specific platforms and tags (e.g., linux/arm64).
Pulls the latest Docker image and deploys the application to the Kubernetes cluster (only for non-"latest" deployments) using the appleboy/ssh-action. Requires secrets for remote machine IP, username, key, and port.
Updates the deployment.yaml file with the extracted version and the Docker image reference.
Applies the modified deployment.yaml to the Kubernetes cluster using kubectl.
Resets the working directory to the last commit using git reset --hard HEAD to ensure a clean state after deployment.<br>

**Requirements:**

A GitHub repository with your codebase.<br>
A Kubernetes cluster.<br>
A Docker Hub account.<br>
A SonarCloud account.<br>
A Snyk account.<br>


**Secrets configured in your GitHub repository for:**<br>
(Repository --> Settings--> Secrets and Variables--> Actions--> New repository secret)<br>
$---------------------------------------$

**APP_NAME:** | The name of the application as used to create the Dockerhub Image

**DOCKERHUB_TOKEN:** The authentication API token to be used instead of password.

**DOCKERHUB_USERNAME:** DockerHub Username used for login.

**REMOTE_MACHINE_IP:** The IP of the remote kubernetes cluster control server.

**REMOTE_MACHINE_KEY:** The private SSH key of the remote machine. Entered directly as a text into the secret.

**REMOTE_MACHINE_PORT:** The port used connecting via SSH to the remote machine.

**REMOTE_MACHINE_USER:** Username used to connecto to remote mahcine.

**SNYK_TOKEN:** Project token obtained from "snyk.io".

**SONAR_ORGANIZATION:** Organizaton name obtained from "sonarcloud.io".

**SONAR_PROJECT_KEY:** Project keyy obtained from "sonarcloud.io".

**SONAR_TOKEN:** Secret token obtained from "sonarcloud.io".
$~~$


$~$



## :open_file_folder: Files

- **./github/workflows/main.yml:**   Main GitHub Actions playbook file.

- **src/app.py:**   Flask Python App file.
 
- **templates/index.html:**   index.html template.
 
- **Dockerfile:**   Docker image build manifest file.
 
- **deployment.yaml:**   Kubernetes deployment manifest.
 
- **/docs:**   Directory containing media files.
 
- **LICENSE.txt:**   License file.
 
- **README.md:**   Readme file formatted for Github, with information about the chart.


$~$


## :warning: License

Distributed under the Apache License 2.0 License.

Please note that Kubernetes SonarCloud and Snyk have their own respective licenses. 

See LICENSE.txt for more information. #
$~$

## :handshake: Contact

Eli Pavlov - www.weblightenment.com - admin@weblightenment.com

Project Link: https://github.com/eli-pavlov/realtimne-cicd-project.git
$~$

## :gem: Acknowledgements and thanks to:
- [Kubernetes.io](https://kubernetes.io/docs)
- [SonarCloud](https://www.sonarcloud.io)
- [Snyk](https://www.snyk.io)
- [DockerHub](https://hub.docker.com)
- [Awesome Github Readme File Generator](https://www.genreadme.cloud/)
