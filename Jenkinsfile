pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/karann1311/ai_internal.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker build -t iris-flask-app .'
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    bat 'docker run -d -p 5000:5000 iris-flask-app'
                }
            }
        }
    }
}
