pipeline {

    agent any

     stages {
        stage('checkout') {
            steps {

                git 'https://github.com/kuslapur/Maven_jenkinsfile_tomcat.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Move to tomcat server') {
            steps {
                sh 'cp /var/lib/jenkins/workspace/Maven_jenkinsfile_tomcat /opt/apache-tomcat-9.0.54/webapps'
            }
        }
    
    }
}


