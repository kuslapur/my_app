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
        stage('Move to tomcat server') {
            steps {
                ansible-playbook 'copyother.yml' 
            }
        }
    
    }
}


