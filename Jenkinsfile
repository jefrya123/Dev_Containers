pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "flask-app" // Local image name
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jefrya123/Dev_Containers.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh """
                    docker stop flask-app || true
                    docker rm flask-app || true
                    docker run -d --name flask-app -p 80:5000 ${DOCKER_IMAGE}:${env.BUILD_NUMBER}
                    """
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
