pipeline {
    agent any

   

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/sony-0/StudentAttendance'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
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
