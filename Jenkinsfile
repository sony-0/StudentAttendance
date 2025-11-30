pipeline {
    agent any

    tools {
        maven 'Maven3'  // This should match the name you set in Global Tool Configuration
        jdk 'JDK11'     // Optional if using Java
    }

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
