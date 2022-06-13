pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                 sh "./gradlew test assemble"
            }
            post {
                success {
                    junit 'build/test-results/test/*.xml'
                    archiveArtifacts 'build/libs/*.jar'
                }

            }
        }
        stage('Publish') {
             steps{
                sshagent(['github-ssh']){
                    sh 'git tag BUILD-1.0.${BUILD_NUMBER}'
                    sh 'git push --tags'
                }
            }
        }
    }
}