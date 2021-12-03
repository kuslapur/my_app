pipeline {

    agent any

     stages {
        stage('checkout##') {
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
                ansiblePlaybook credentialsId: 'ubuntu', disableHostKeyChecking: true, installation: 'ansible', playbook: 'copyother.yml'
            }
        }
    
    }
}


