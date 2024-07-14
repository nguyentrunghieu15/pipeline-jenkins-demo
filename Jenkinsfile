pipeline {
    agent { dockerfile true }
    stages {
        stage('build') {
            steps {
                sh 'python3 --version'
                sh 'flask --app /app/app.py run --host=0.0.0.0'
            }
        }
    }
}