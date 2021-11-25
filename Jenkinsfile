pipeline {
    agent any 

    stages {
        stage('Check out SCM'){
            step {
                git 'https://github.com/kuslapur/my_app.git'
            }
        }
        stage('Build and package'){
            step {
                sh 'mvn package'
            }
        }        
        stage('Email notification'){
            step {
                mail bcc: '', body: 'Hi Welcome jenkins', cc: '', from: '', replyTo: '', subject: 'Hi Jenkins', to: 'bkuslapur@gmail.com'
            }
        }
    }
}
