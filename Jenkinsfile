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
        }
      
    }
}
