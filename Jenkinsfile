pipeline {
    agent any

   

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sony-0/StudentAttendance.git'

            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
    }

    post {
        success {
            echo "Build Successful"
        }
        failure {
            echo "Build Failed"
        }
    }
}
