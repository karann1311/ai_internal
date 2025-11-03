pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/Iris-ML-Project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t iris-ml-app .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run iris-ml-app'
                }
            }
        }
    }
}
