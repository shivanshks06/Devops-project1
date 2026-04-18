pipeline {
    agent any

    environment {
        DOCKER_COMPOSE = "docker-compose"
    }

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Build Containers') {
            steps {
                sh 'cd docker && docker-compose build'
            }
        }

        stage('Run Containers') {
            steps {
                sh 'cd docker && docker-compose down || true'
                sh 'cd docker && docker-compose up -d'
            }
        }

        stage('Health Check') {
            steps {
                script {
                    sleep(10)
                    sh 'curl -f http://localhost:5001 || exit 1'
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful 🚀'
        }
        failure {
            echo 'Deployment Failed ❌'
        }
    }
}