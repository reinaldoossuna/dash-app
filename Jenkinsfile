node {
    stage('Checking out git repo') {
        echo 'Checkout...'
        checkout scm
      }
    stage('Checking environment') {
      echo 'Checking environment...'
      sh 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      sh 'docker -v'
    }
    stage("Linting") {
        echo 'Linting...'
        sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
    }
}
