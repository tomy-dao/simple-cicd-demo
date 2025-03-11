pipeline {
  agent {
    label 'built-in'
  }
  
  options {
    skipDefaultCheckout()
  }

  stages {
    stage('Build') {
      parallel {
        stage('Windows') {
          stages {
            stage('msvc2017') {
              steps {
                withChecks('MSVC 2017') {
                  build job: 'msvc2017'
                }
              }
            }
            stage('msvc2022') {
              when { 
                branch 'main' 
              }
              steps {
                withChecks('MSVC 2022') {
                  build job: 'msvc2022'
                }
              }
            }
          }
        }
        stage('Linux') {
          stages {
            stage('clang') {
              when { 
                branch 'dev' 
              }
              steps {
                withChecks('clang') {
                  build job: 'clang'
                }
              }
            }
            stage('gcc') {
              steps {
                withChecks('gcc') {
                  build job: 'gcc'
                }
              }
            }
          }
        }
      }
    }
  }
}