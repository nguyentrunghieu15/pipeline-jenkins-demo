pipeline {
    agent any
    stages {
        stage('deployment') {
            steps {
                script {
                    def cmd = '#!/bin/bash\n' +
                        'ssh-add ~/.ssh/github\n'+
                        'cd ~/app/test\n'+
                        'git pull origin main\n'+
                        'docker rm -f test\n' +
                        'docker rmi test\n'+
                        'docker build -t test .\n'+
                        'docker run -d --name test -p 3000:5000 test\n'
                    sshagent(credentials: ['ssh-test-cicd']) {
                        sh """
                            ssh -i ssh-test-cicd testcicd@127.0.0.1 "echo \\\"${cmd}\\\" > deploy.sh && chmod +x deploy.sh && ./deploy.sh"
                        """
                    }
                }
            }
        }
    }
}
