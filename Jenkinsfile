pipeline {
    agent any

    stages {
        stage('SCM checkout') {
            steps {
                git 'https://github.com/kuslapur/my_app.git'
            }
        }
        stage('Compile and package') {
            steps {
               sh 'mvn package'    
            }
            steps ('Email Notification') {

               mail bcc: '', body: 'Hi Welcome jenkins', cc: '', from: '', replyTo: '', subject: 'Hi Jenkins', to: 'bkuslapur@gmail.com'   
            }

        }
      
    }
}

