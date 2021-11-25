pipeline {
    agent any

    stages {
        stage('SCM checkout') {
            steps {
                git 'https://github.com/kuslapur/vprofile-project.git'
            }
        }
        stage('Compile and package') {
            steps {
               sh 'mvn package'    
            }
        }
      
    }
}
