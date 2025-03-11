pipeline {
    agent any
    options {
        skipDefaultCheckout()
    }
    stages {
        stage('Hello') {
            steps {
                publishChecks(name: 'gcc', status: 'IN_PROGRESS', summary: 'running')
                sh 'echo Hello'
                publishChecks(name: 'gcc', status: 'COMPLETED', summary: 'done')
            }
        }
    }
}


