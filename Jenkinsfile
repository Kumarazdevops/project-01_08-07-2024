pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'my_image:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch : 'feature/updates', url: 'https://github.com/Kumarazdevops/project-01_08-07-2024.git' 
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t my_image .'
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    bat 'docker volume create vol1'
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
