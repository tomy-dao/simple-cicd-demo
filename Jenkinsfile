pipeline {
    agent any

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
