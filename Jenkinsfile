pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
    post {
        success {
            githubCheck status: 'SUCCESS', name: 'Build & Test'
        }
        failure {
            githubCheck status: 'FAILURE', name: 'Build & Test'
        }
    }
}