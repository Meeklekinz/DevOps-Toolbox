# Jenkins Directory

This directory contains Jenkins configurations and related files for setting up continuous integration and continuous delivery (CI/CD) pipelines.

## Contents

1. [Jenkinsfile](./Jenkinsfile): Pipeline script defining the CI/CD stages.
2. [configurations/](./configurations/): Directory containing Jenkins configuration files.
    - [config.xml](./configurations/config.xml): Jenkins global configuration settings.
    - [plugins.txt](./configurations/plugins.txt): List of Jenkins plugins required for the pipeline.

## Usage

### Setting Up Jenkins Pipeline

1. Create a new Jenkins job and select "Pipeline" as the job type.
2. In the pipeline definition, choose "Pipeline script from SCM" and specify the repository URL.
3. Set the script path to `Jenkins/Jenkinsfile`.
4. Save the Jenkins job configuration.

### Additional Configuration

1. Edit the [config.xml](./configurations/config.xml) file to adjust global Jenkins settings as needed.
2. Update the [plugins.txt](./configurations/plugins.txt) file to include any additional Jenkins plugins required for your pipeline.

## License

This project is licensed under the [GNU General Public License v3.0](../../LICENSE).