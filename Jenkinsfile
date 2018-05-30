pipeline {
    agent any
    tools {
            maven 'maven-3.5.3' 
    	    jdk 'java-8-oracle'
        }
    stages {
        stage("Compile") { 
            steps {
                sh "mvn clean install -DskipTests=true"
            }
        }
        stage("Unit test") {
         steps {
            sh "mvn test"
         }
        }
        stage("Docker") {
         steps {
            sh "mvn dockerfile:build"
            sh "mvn dockerfile:push -Ddockerfile.useMavenSettingsForAuth=true"
         }
        }
         stage("Docker script") {
         steps {
            sh "bash ./target/classes/run.sh"
            sh "docker images"
         }
        }
    }
}
