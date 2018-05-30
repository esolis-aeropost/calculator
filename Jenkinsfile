pipeline {
    agent any
    tools {
            maven 'maven_3.5.3' 
    	    jdk 'java-8-oracle'
        }
    stages {
        stage("Compile") { 
            steps {
                sh "mvn package"
            }
        }
        stage("Unit test") {
            steps {
                sh "mvn test"
            }
        }
    }
}
