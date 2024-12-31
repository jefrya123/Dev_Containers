pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Jenkins automatically checks out from SCM if using "Pipeline script from SCM",
                // but we can explicitly do it here as well:
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building the Flask app..."
                // e.g. sh 'pip install -r requirements.txt'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                // e.g. sh 'pytest --maxfail=1 --disable-warnings -q'
            }
        }

        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                // e.g. sh 'docker build -t your-image-name:latest .'
            }
        }

        stage('Docker Push') {
            when {
                // We only push if needed. Example: only push on the 'main' branch.
                // Or you can always evaluate to false until you're ready to push.
                expression {
                    return false
                }
            }
            steps {
                echo "Pushing Docker image..."
                // e.g. sh 'docker push your-image-name:latest'
            }
        }
    }
}
