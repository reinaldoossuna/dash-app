pipeline {
  agent {
    dockerfile true
  }
  stages {
    stage('Build Docker image') {
      parallel {
        stage('Build Docker image') {
          steps {
            sh 'Hello'
          }
        }

        stage('T') {
          agent {
            dockerfile {
              filename 'Dockerfile'
            }

          }
          steps {
            sh 'echo \'Hello\''
          }
        }

      }
    }

  }
}