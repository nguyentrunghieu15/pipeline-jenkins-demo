pipeline {
    agent { docker { image 'python:alpine3.19' } }
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh 'pip install -r requirements.txt'
                sh 'flask run --host=0.0.0.0'
            }
        }
    }
}