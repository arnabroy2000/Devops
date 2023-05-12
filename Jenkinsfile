pipeline {
    agent any
    tools{
        maven 'apache-maven-3.6.3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/arnabroy2000/Devops']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t arnab/Devops-0.0.1-SNAPSHOT .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   sh 'docker login -u arnab -p "Arnab@roy.123"'
                   sh 'docker push arnab/Devops-0.0.1-SNAPSHOT'
                }
            }
        }
    }
    
}
