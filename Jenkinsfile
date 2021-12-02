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
                sh 'cp /var/lib/jenkins/workspace/maven+tomcat+git/target/myweb-0.0.5.war /opt/apache-tomcat-9.0.54/webapps'
            }
        }
    
    }
}


