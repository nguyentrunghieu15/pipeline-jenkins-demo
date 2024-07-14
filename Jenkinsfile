pipeline {
    agent { 
            dockerfile {
            filename 'Dockerfile'
            dir '.'
            args '-p 5000:5000'
        }
    }
    stages {
        stage('deployment') {
            steps {
                sh 'python3 --version'
                sh 'flask --app /app/app.py run --host=0.0.0.0'
            }
        }
    }
}