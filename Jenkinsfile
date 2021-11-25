pipeline {
    
    agent any
    
     stages {
        stage('checkout') {
            steps {
                
                git 'https://github.com/kuslapur/my_app.git'            
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Email') {
            steps {
                mail bcc: '', body: 'Hi Welcome jenkins', cc: '', from: '', replyTo: '', subject: 'Hi Jenkins', to: 'bkuslapur@gmail.com'
            }
        }
    }
}
