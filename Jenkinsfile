pipeline {
    agent { docker { image 'python:alpine3.19' } }
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh 'pip install --upgrade pip'
                sh 'pip install --user flask'
                sh 'flask run --host=0.0.0.0'
            }
        }
    }
}