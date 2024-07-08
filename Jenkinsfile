pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'desktop-app:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch : 'feature/updates', url: 'https://github.com/Kumarazdevops/project-01_08-07-2024' 
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Run Tests') {
            steps {
                script {
                    docker.image(DOCKER_IMAGE).inside {
                        sh './gradlew test'  // Replace with your build/test commands
                    }
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
