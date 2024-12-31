pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t my-flask-app:latest .'
            }
        }

        stage('Run Container') {
            steps {
                // Stop/remove an old container if it's already running
                sh 'docker rm -f my-flask-app || true'
                
                // Run container in detached mode (-d) on port 5000
                sh 'docker run -d --name my-flask-app -p 5000:5000 my-flask-app:latest'
            }
        }
    }
}
