pipeline {
    agent any
    tools {
        maven 'MAVEN3'      // match the name you configured in Jenkins
        jdk 'JDK21'         // match the name of installed JDK in Jenkins
    }
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
        stage('Deploy') {
            steps {
                echo 'Deployment step here (optional)'
            }
        }
    }
    post {
        failure {
            echo 'Build Failed!'
        }
    }
}
