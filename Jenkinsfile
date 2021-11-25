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
        stage('Docker build') {
            steps {
                sh 'sudo docker build . -t test'
            }
        }
    }
}

