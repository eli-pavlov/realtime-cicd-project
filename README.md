<div align='center'>
<img src= "https://github.com/eli-pavlov/realtime-cicd-project/blob/master/docs/githubactions2.png" width=320 />
<h1> Devops CI/CD Project</h1>
 
<p> Example of a web app depoyment on Kubetnetes using Github Actions and Security & Code quality analysis tools. </p>

<h4> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/blob/master/README.md"> Documentation </a> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/issues"> Report Bug </a> <span> · </span> <a href="https://github.com/eli-pavlov/realtime-cicd-project/issues"> Request Feature </a> </h4>

$~~$
</div>

 :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
- [Project Diagram](#world_map-project-diagram)
- [Project Files](#open_file_folder-files)
- [License](#warning-license)
- [Contact](#handshake-contact)
- [Acknowledgements](#gem-acknowledgements)


$~~$

## :world_map: Project Diagram

<img src= "https://github.com/eli-pavlov/realtime-cicd-project/blob/master/docs/rtproject-diagram.png" width=1080 />


$~$

## :star2: About the Project

 work in progress

Variables that have to be defined in Github:
(Repository --> Settings--> Secrets and Variables--> Actions--> New repository secret)

APP_NAME

DOCKERHUB_TOKEN

DOCKERHUB_USERNAME

REMOTE_MACHINE_IP

REMOTE_MACHINE_KEY

REMOTE_MACHINE_PORT

REMOTE_MACHINE_USER

SNYK_TOKEN

SONAR_ORGANIZATION

SONAR_PROJECT_KEY

SONAR_TOKEN
$~~$

$~$



## :open_file_folder: Files

- **./github/workflows/main.yml:** GitHub Actions playbook file.
- **src/app.py:** Flask Python App file - "<<Compliment generator>>".
- **templates/index.html:** index.html template.
- **Dockerfile** Docker image build manifest file.
- **deployment.yaml** Kubernetes deployment manifest.
- **/docs:** Directory containing media files.
- **LICENSE.txt:** License file.
- **README.md:** Readme file formatted for Github, with information about the chart.


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
