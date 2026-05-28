pipeline {

    agent any

    stages {

        stage('Clone Repository') {
            steps {
                checkout scm
            }
        }

        stage('Show Docker Version') {
            steps {
                sh 'docker --version'
            }
        }

        stage('Build Containers') {
            steps {
                sh 'docker compose build'
            }
        }

        stage('Deploy Containers') {
            steps {
                sh 'docker compose up -d'
            }
        }

        stage('Verify Containers') {
            steps {
                sh 'docker ps'
            }
        }

        stage('Run Ansible') {
            steps {
                sh """
                ansible-playbook \
                -i ansible/inventory.ini \
                ansible/package-manager.yml \
                -e "package_name=${PACKAGE_NAME}" \
                -e "package_state=${PACKAGE_STATE}"
                """
            }
        }
    }
}
