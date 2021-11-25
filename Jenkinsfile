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
                sh 'docker build . -t test'
            }
        }
        stage('Docker run and deploy') {
            steps {
                sh 'docker run -it -p 8087:8080 -d test'
            }
        }
    }
}


