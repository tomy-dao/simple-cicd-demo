import org.jenkinsci.plugins.github.checks.GitHubChecksStatus

pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    def status = GitHubChecksStatus.IN_PROGRESS
                    githubChecks status: status, name: 'Build'
                }
                sh 'echo "Building..."'
            }
        }
    }
}