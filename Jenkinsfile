pipeline {
    agent any
    tools{
        maven 'apache-maven-3.6.3'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/arnabroy2000/Devops']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t arnab/devops-assignment .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   bat 'docker login -u arnab -p "Arnab@roy.123"'
                   bat 'docker push arnab/devops-assignment'
                }
            }
        }
    }
    
}