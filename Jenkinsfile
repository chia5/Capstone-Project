pipeline {
    agent { label 'Prod'}
    environment {
        registry = "chash07/capstone-project1"
    }
    stages{

        stage("Clone"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/prod']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/chia5/Capstone-Project.git']]])
            }
        }

        stage("Build Website"){
            steps{
                script {
                    docker.build registry + ":V$BUILD_NUMBER"
                }
            }
        }
    
        stage("Test Website"){
            steps{
                echo "Test Successfull"
            }
        }
        stage("Push to Production"){
            steps{
              sh 'docker run -d --name apache -p 80:80'
            }
        }
    }
}
