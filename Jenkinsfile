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
    }
}