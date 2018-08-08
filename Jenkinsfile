pipeline {
    agent {
        label 'mikero'
    }

    stages {
        stage('Build') {
            steps {
                bat 'build.bat' 
            }
            post {
                always {
                    bat 'subst p: /d > nul || exit /b 0'
                }
            }
        }

        stage('Archive Build') {
            steps {
            	bat 'xcopy /e /i /y /s build\\@anrop_ace_ragdoll @anrop_ace_ragdoll' 
                archiveArtifacts artifacts: '@anrop_ace_ragdoll/**/*'
            }
        }
    }
}
