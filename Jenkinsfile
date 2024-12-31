pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'echo "Building the Flask app..."'
                // Insert any build commands here, e.g., pip install, etc.
                // For now, just a placeholder echo
            }
        }
        
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
                // Insert commands to run your Python tests, for example:
                // sh 'pytest --maxfail=1 --disable-warnings -q'
            }
        }
        
        stage('Docker Build') {
            steps {
                script {
                    sh 'echo "Building Docker image..."'
                    // Example: Docker build command
                    // sh "docker build -t your-image-name:latest ."
                }
            }
        }
        
        stage('Docker Push') {
            when {
                expression {
                    // Only push if needed. For now, you can manually control by returning true/false
                    // or set up environment variables if you want to push only from main branch, etc.
                    return false
                }
            }
            steps {
                script {
                    // Docker login & push
                    // sh "docker login -u $REGISTRY_USER -p $REGISTRY_PASS registry.example.com"
                    // sh "docker push registry.example.com/your-image-name:latest"
                }
            }
        }
    }
}
